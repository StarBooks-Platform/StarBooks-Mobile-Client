import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_books_mobile_client/application/books/book_watcher/book_watcher_bloc.dart';
import 'package:star_books_mobile_client/presentation/books/books_overview/widgets/books_list_overview_body_widget.dart';

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
        body: const BooksListOverviewBodyWidget(),
      ),
    );
  }
}
