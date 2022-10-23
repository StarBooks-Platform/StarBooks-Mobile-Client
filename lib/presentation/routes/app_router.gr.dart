// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../books/books_overview/books_overview_page.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    BooksOverviewPageRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BooksOverviewPage(),
      );
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          BooksOverviewPageRoute.name,
          path: '/',
        )
      ];
}

/// generated route for
/// [_i1.BooksOverviewPage]
class BooksOverviewPageRoute extends _i2.PageRouteInfo<void> {
  const BooksOverviewPageRoute()
      : super(
          BooksOverviewPageRoute.name,
          path: '/',
        );

  static const String name = 'BooksOverviewPageRoute';
}
