import 'package:musisync/features/home/domain/entity/song_entity.dart';

class SongModel extends SongEntity {
  SongModel({
    super.id,
    required super.title,
    required super.audioPath,
    required super.author,
  });
  factory SongModel.fromJson(Map<String, dynamic> json) {
    return SongModel(
      id: json['id'],
      title: json['title'],
      audioPath: json['audioPath'],
      author: json['author'],
    );
  }
}
