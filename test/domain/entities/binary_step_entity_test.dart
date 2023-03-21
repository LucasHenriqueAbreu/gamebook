import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/binary_step_entity.dart';
import 'package:gamebook/core/enuns/decision_enum.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

void main() {
  group('Test to BinaryStep', () {
    late final ParagraphEntity paragraphOne;
    late final ParagraphEntity paragraphTwo;
    late final ParagraphEntity paragraphTree;
    late final BinaryStepEntity nextStep;

    setUpAll(() {
      paragraphOne = ParagraphEntity(content: 'João é de uma familia pobre');
      paragraphTwo = ParagraphEntity(content: 'João foi para a cidade');
      paragraphTree = ParagraphEntity(content: 'João foi para o bosque');
      nextStep = BinaryStepEntity(
          yesStep: paragraphTwo, noStep: paragraphTree, backStep: paragraphOne);
    });

    test(
        'Should be possible create a instance of BinaryStepEntity and they be a StepEntity',
        () {
      expect(nextStep, isA<StepEntity>());
      expect(nextStep, isA<BinaryStepEntity>());
    });

    test('Must go to next when call method next with yes decision', () {
      nextStep.decision = Decision.yes;
      final nextParagraph = nextStep.nextStep();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para a cidade');
    });

    test('Must go to next when call method next with no decision', () {
      nextStep.decision = Decision.no;
      final nextParagraph = nextStep.nextStep();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para o bosque');
    });

    test('Must go to back when call method back', () {
      final backParagraph = nextStep.backStep;
      expect(backParagraph, isA<ParagraphEntity>());
      expect(backParagraph.content, 'João é de uma familia pobre');
    });
  });
}
