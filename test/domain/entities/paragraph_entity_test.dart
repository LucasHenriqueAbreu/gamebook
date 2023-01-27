import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';

void main() {
  group('Test to ParagraphEntity', () {
    test('Should be possible create a instance of ParagraphEntity', () {
      final paragraph = ParagraphEntity(content: 'João é de uma familia pobre');
      expect(paragraph, isA<ParagraphEntity>());
    });
  });
}
