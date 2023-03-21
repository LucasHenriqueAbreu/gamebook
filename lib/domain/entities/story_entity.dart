import 'package:gamebook/domain/entities/paragraph_entity.dart';

class StoryEntity {
  final int? _id;
  final String _title;
  ParagraphEntity? initialParagraph;

  StoryEntity({required String title, int? id})
      : _title = title,
        _id = id;

  get title => _title;
}
