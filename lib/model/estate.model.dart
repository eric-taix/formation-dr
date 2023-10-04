class Estate {
  final String title;
  final String description;

  Estate({required this.title, required this.description});

  static Estate? fromJson(articleJson) {
    if (articleJson case {'titre': String title, 'description': final description}) {
      return Estate(
        title: title,
        description: description,
      );
    }
    return null;
  }
}
