import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/binary_step_entity.dart';
import 'package:gamebook/domain/entities/decision_enum.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

void main() {
  group('Test to BinaryStep', () {
    final paragraphOne =
        ParagraphEntity(content: 'João é de uma familia pobre');
    final paragraphTwo = ParagraphEntity(content: 'João foi para cidade');
    final paragraphTree = ParagraphEntity(content: 'João foi para o bosque');
    final nextStep = BinaryStepEntity(
        yes: paragraphTwo, no: paragraphTree, back: paragraphOne);

    test(
        'Must be possible create a instance of BinaryStepEntity and StepEntity',
        () {
      expect(nextStep, isA<StepEntity>());
      expect(nextStep, isA<BinaryStepEntity>());
    });

    test('Must go to next when call method next with yes decision', () {
      nextStep.decision = Decision.yes;
      final nextParagraph = nextStep.next();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para cidade');
    });

    test('Must go to next when call method next with no decision', () {
      nextStep.decision = Decision.no;
      final nextParagraph = nextStep.next();
      expect(nextParagraph, isA<ParagraphEntity>());
      expect(nextParagraph.content, 'João foi para o bosque');
    });

    test('Must go to back when call method back', () {
      final backParagraph = nextStep.back();
      expect(backParagraph, isA<ParagraphEntity>());
      expect(backParagraph.content, 'João é de uma familia pobre');
    });
  });
}
