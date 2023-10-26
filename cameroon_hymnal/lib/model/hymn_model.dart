class Hymn {
  final int id;
  final String title;
  final String chorus;
  final List<String> verses;
  final List<String>? antiphon;

  const Hymn({
    required this.id,
    required this.title,
    required this.chorus,
    required this.verses,
    this.antiphon
  });
}
