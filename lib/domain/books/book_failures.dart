import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_failures.freezed.dart';

@freezed
class BookFailure with _$BookFailure {
  const factory BookFailure.unexpected() = _Unexpected;
}
