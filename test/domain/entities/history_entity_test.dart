import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/story_entity.dart';

void main() {
  group('Tests to HitoryEntity', () {
    test('Should be create a HistoryEntity instance', () {
      final historyEntity = StoryEntity(title: 'João e o pé de feijão');

      expect(historyEntity, isA<StoryEntity>());
    });

    test('Should be possible to add a paragraphs to a story', () {
      final historyEntity = StoryEntity(title: 'João e o pé de feijão');
      final paragraph = ParagraphEntity(content: 'João é de uma familia pobre');
      historyEntity.initialParagraph = paragraph;
      expect(historyEntity.initialParagraph, isNotNull);
    });
  });
}
