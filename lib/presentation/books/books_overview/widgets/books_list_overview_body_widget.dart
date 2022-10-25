import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_books_mobile_client/presentation/books/books_overview/widgets/books_list_overview_card_widget.dart';

import '../../../../application/books/book_watcher/book_watcher_bloc.dart';

class BooksListOverviewBodyWidget extends StatelessWidget {
  const BooksListOverviewBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookWatcherBloc, BookWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) => ListView.builder(
            itemCount: state.books.size,
            itemBuilder: (context, index) {
              final book = state.books[index];
              return BooksListOverviewCardWidget(
                book: book,
              );
            },
          ),
          loadFailure: (state) => Container(),
        );
      },
    );
  }
}
