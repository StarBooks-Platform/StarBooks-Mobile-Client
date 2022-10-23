import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_books_mobile_client/application/books/book_watcher/book_watcher_bloc.dart';

import '../../../dependency_injection.dart';
import '../../core/widgets/bottom_navigation_bar_widget.dart';

class BooksOverviewPage extends StatelessWidget {
  const BooksOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BookWatcherBloc>()
            ..add(
              const BookWatcherEvent.watchAllStarted(),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Star Books'),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
        body: BlocBuilder<BookWatcherBloc, BookWatcherState>(
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
                // return ListTile(
                //   title: Text(book.title),
                //   leading: Image.network(
                //       'https://static.wikia.nocookie.net/warriors/images/d/dc/ASC-3.jpeg/revision/latest?cb=20220505160442'),
                // );
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.network(
                            'https://static.wikia.nocookie.net/warriors/images/d/dc/ASC-3.jpeg/revision/latest?cb=20220505160442'),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          book.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            loadFailure: (state) => Container(),
          );
        }),
      ),
    );
  }
}
