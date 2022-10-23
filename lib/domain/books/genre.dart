enum Genre {
  unknown,
  scienceFiction,
  science,
  fiction,
  nonFiction;

  static fromString(String genre) {
    switch (genre) {
      case 'Science-Fiction':
        return Genre.scienceFiction;
      case 'Science':
        return Genre.science;
      case 'Fiction':
        return Genre.fiction;
      case 'Non-Fiction':
        return Genre.nonFiction;
      default:
        return Genre.unknown;
    }
  }
}
