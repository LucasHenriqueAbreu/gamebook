import 'package:gamebook/domain/entities/paragraph_entity.dart';

class StoryEntity {
  final String _title;
  ParagraphEntity? initialParagraph;

  StoryEntity({required String title}) : _title = title;
}
