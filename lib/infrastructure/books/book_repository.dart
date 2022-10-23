import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:star_books_mobile_client/domain/books/book_failures.dart';
import 'package:star_books_mobile_client/domain/books/i_repository.dart';
import 'package:star_books_mobile_client/infrastructure/books/book_overview_dto.dart';

import '../../domain/books/genre.dart';
import 'author_dto.dart';

@LazySingleton(as: IRepository<BookOverviewDto, BookFailure>)
class BookRepository implements IRepository<BookOverviewDto, BookFailure> {
  static final List<BookOverviewDto> _sampleData = [
    BookOverviewDto(
      isbn: '978-1-60309-450-4',
      title: 'The Sea of Monsters',
      authors: [
        const AuthorDto(
          firstName: 'Rick',
          lastName: 'Riordan',
        ),
      ],
      publisherName: 'Disney Hyperion',
      genre: Genre.fiction,
      year: 2006,
      price: 8.99,
      shortDescription:
          'Percy Jackson and the Olympians, Book 2, The Sea of Monsters '
          'is a fantasy-adventure novel based on Greek mythology, written by Rick Riordan, '
          'and the second book in the Percy Jackson & the Olympians series. It was released '
          'on May 1, 2006, by Hyperion Books for Children. The book was followed by The Titan\'s Curse in 2007.',
      coverBytes: Uint8List(0),
    ),
    BookOverviewDto(
      isbn: '978-1-60309-057-5',
      title: 'The Lightning Thief',
      authors: [
        const AuthorDto(
          firstName: 'Rick',
          lastName: 'Riordan',
        ),
      ],
      publisherName: 'Disney Hyperion',
      genre: Genre.fiction,
      year: 2005,
      price: 8.99,
      shortDescription:
          'Percy Jackson and the Olympians, Book 1, The Lightning Thief '
          'is a fantasy-adventure novel based on Greek mythology, written by Rick Riordan, '
          'and the first book in the Percy Jackson & the Olympians series. It was released '
          'on February 1, 2005, by Hyperion Books for Children. The book was followed by The Sea of Monsters in 2006.',
      coverBytes: Uint8List(0),
    ),
    BookOverviewDto(
      isbn: '978-1-60309-444-3',
      title: 'The Last Olympian',
      authors: [
        const AuthorDto(
          firstName: 'Rick',
          lastName: 'Riordan',
        ),
      ],
      publisherName: 'Disney Hyperion',
      genre: Genre.fiction,
      year: 2009,
      price: 8.99,
      shortDescription:
          'Percy Jackson and the Olympians, Book 5, The Last Olympian '
          'is a fantasy-adventure novel based on Greek mythology, written by Rick Riordan, '
          'and the fifth book in the Percy Jackson & the Olympians series. It was released '
          'on May 5, 2009, by Hyperion Books for Children. The book was preceded by The Battle of the Labyrinth in 2008.',
      coverBytes: Uint8List(0),
    ),
  ];

  @override
  Stream<Either<BookFailure, KtList<BookOverviewDto>>> getPaged(
      int page, int pageSize) async* {
    yield right(_sampleData.toImmutableList());
  }
}
