class SongEntity {
  final String? id;
  final String title;
  final String audioPath;
  final String author;

  SongEntity({
    this.id,
    required this.title,
    required this.audioPath,
    required this.author,
  });
}
