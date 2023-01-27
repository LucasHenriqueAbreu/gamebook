import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/simple_step_entity.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

void main() {
  group('Test to SimpleStepEntity', () {
    late ParagraphEntity paragraphOne;
    late ParagraphEntity paragraphTwo;
    late SimpleStepEntity simpleStep;

    setUp(() {
      paragraphOne = ParagraphEntity(content: 'João é de uma familia pobre');
      paragraphTwo = ParagraphEntity(content: 'João foi para a cidade');
      simpleStep =
          SimpleStepEntity(nextStep: paragraphTwo, backStep: paragraphOne);
    });

    test(
        'Should be possible create a instance of SimpleStepEntity and they be a StepEntity',
        () {
      expect(simpleStep, isA<StepEntity>());
      expect(simpleStep, isA<SimpleStepEntity>());
    });

    test('Must go to next when call method next', () {
      final nextParagraph = simpleStep.nextStep();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para a cidade');
    });

    test('Must go to back when call method back', () {
      final backParagraph = simpleStep.backStep;
      expect(backParagraph, isA<ParagraphEntity>());
      expect(backParagraph.content, 'João é de uma familia pobre');
    });
  });
}
