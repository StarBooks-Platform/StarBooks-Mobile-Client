import 'dart:typed_data';

import '../../domain/books/genre.dart';
import 'author_dto.dart';

class BookOverviewDto {
  final String isbn;
  final String title;
  final List<AuthorDto> authors;
  final String publisherName;
  final Genre genre;
  final int year;
  final double price;
  final String shortDescription;
  final Uint8List coverBytes;

  BookOverviewDto({
    required this.isbn,
    required this.title,
    required this.authors,
    required this.publisherName,
    required this.genre,
    required this.year,
    required this.price,
    required this.shortDescription,
    required this.coverBytes,
  });
}
