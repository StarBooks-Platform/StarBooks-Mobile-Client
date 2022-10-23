import 'package:auto_route/annotations.dart';

import '../books/books_overview/books_overview_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(
    initial: true,
    page: BooksOverviewPage,
  ),
])
class $AppRouter {}
