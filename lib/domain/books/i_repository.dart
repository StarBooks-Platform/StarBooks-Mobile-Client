import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IRepository<TEntity, TFailure> {
  Stream<Either<TFailure, KtList<TEntity>>> getPaged(int page, int pageSize);
}
