part of 'book_watcher_bloc.dart';

@freezed
class BookWatcherEvent with _$BookWatcherEvent {
  const factory BookWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory BookWatcherEvent.booksReceived(
    Either<BookFailure, KtList<BookOverviewDto>> failureOrBooks,
  ) = _BooksReceived;
}
