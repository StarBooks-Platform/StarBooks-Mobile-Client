// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/books/book_watcher/book_watcher_bloc.dart' as _i7;
import 'domain/books/book_failures.dart' as _i5;
import 'domain/books/i_repository.dart' as _i3;
import 'infrastructure/books/book_overview_dto.dart' as _i4;
import 'infrastructure/books/book_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IRepository<_i4.BookOverviewDto, _i5.BookFailure>>(
      () => _i6.BookRepository());
  gh.factory<_i7.BookWatcherBloc>(() => _i7.BookWatcherBloc(
      get<_i3.IRepository<_i4.BookOverviewDto, _i5.BookFailure>>()));
  return get;
}
