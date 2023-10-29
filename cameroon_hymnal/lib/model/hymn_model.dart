class Hymn {
  final String title;
  final String chorus;
  final List<String> verses;
  final List<String>? antiphon;

  const Hymn({
    required this.title,
    required this.chorus,
    required this.verses,
    required this.antiphon
  });
}
