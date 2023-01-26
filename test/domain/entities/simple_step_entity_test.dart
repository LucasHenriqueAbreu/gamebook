import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/next_entity.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

void main() {
  group('Test to SimpleStepEntity', () {
    final paragraphOne =
        ParagraphEntity(content: 'João é de uma familia pobre');
    final paragraphTwo = ParagraphEntity(content: 'João foi para cidade');
    final next = SimpleStepEntity(next: paragraphTwo, back: paragraphOne);

    test(
        'Must be possible create a instance of SimpleStepEntity and StepEntity',
        () {
      expect(next, isA<StepEntity>());
      expect(next, isA<SimpleStepEntity>());
    });

    test('Must go to next when call method next', () {
      final nextParagraph = next.next();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para cidade');
    });

    test('Must go to back when call method back', () {
      final backParagraph = next.back();
      expect(backParagraph, isA<ParagraphEntity>());
      expect(backParagraph.content, 'João é de uma familia pobre');
    });
  });
}
