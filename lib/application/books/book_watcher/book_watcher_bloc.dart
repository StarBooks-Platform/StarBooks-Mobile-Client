import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:star_books_mobile_client/domain/books/book_failures.dart';
import 'package:star_books_mobile_client/domain/books/i_repository.dart';

import '../../../infrastructure/books/book_overview_dto.dart';

part 'book_watcher_bloc.freezed.dart';
part 'book_watcher_event.dart';
part 'book_watcher_state.dart';

@injectable
class BookWatcherBloc extends Bloc<BookWatcherEvent, BookWatcherState> {
  final IRepository<BookOverviewDto, BookFailure> _bookRepository;

  StreamSubscription<Either<BookFailure, KtList<BookOverviewDto>>>?
      _bookStreamSubscription;

  BookWatcherBloc(this._bookRepository)
      : super(const BookWatcherState.initial()) {
    on<BookWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (e) async {
          emit(const BookWatcherState.loadInProgress());
          await _bookStreamSubscription?.cancel();
          _bookStreamSubscription = _bookRepository.getPaged(0, 10).listen(
                (failureOrBooks) => add(
                  BookWatcherEvent.booksReceived(failureOrBooks),
                ),
              );
        },
        booksReceived: (e) async {
          emit(const BookWatcherState.loadInProgress());
          emit(
            e.failureOrBooks.fold(
              (f) => BookWatcherState.loadFailure(f),
              (books) => BookWatcherState.loadSuccess(books),
            ),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _bookStreamSubscription?.cancel();
    return super.close();
  }
}
