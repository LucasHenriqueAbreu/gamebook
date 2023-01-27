import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/options_step_entity.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';
import 'package:gamebook/domain/entities/option_entity.dart';

void main() {
  group('Test to OptionStepEntity', () {
    late ParagraphEntity paragraphOne;
    late ParagraphEntity paragraphTwo;
    late ParagraphEntity paragraphTree;
    late ParagraphEntity paragraphFour;
    late OptionsStepEntity optionsStep;

    setUp(() {
      paragraphOne = ParagraphEntity(content: 'João é de uma familia pobre');
      paragraphTwo = ParagraphEntity(content: 'João foi para a cidade');
      paragraphTree = ParagraphEntity(content: 'João foi para o bosque');
      paragraphFour =
          ParagraphEntity(content: 'João foi para o parque de diversões');

      optionsStep = OptionsStepEntity(backStep: paragraphOne);
      optionsStep.addOption(Option(
        id: 1,
        nextStep: paragraphTwo,
        description: 'Sim, eu confio em você e vou vender os meus feijões',
      ));
      optionsStep.addOption(Option(
        id: 2,
        nextStep: paragraphTree,
        description:
            'Não, eu não confio em você e não vou vender os meus feijões',
      ));
      optionsStep.addOption(Option(
        id: 3,
        nextStep: paragraphFour,
        description: 'Que você pensa que é? Esses veijões valem muito mais',
      ));
    });

    test(
        'Should be possible create a instance of OptionsStepEntity and they be a StepEntity',
        () {
      expect(optionsStep, isA<OptionsStepEntity>());
      expect(optionsStep, isA<StepEntity>());
    });

    test('Should be possible chosen next option to go', () {
      optionsStep.setOptionSelected(3);
      expect(optionsStep.optionSelected.description,
          'Que você pensa que é? Esses veijões valem muito mais');
    });

    test('Should be possible chosen next option to go', () {
      optionsStep.setOptionSelected(3);
      expect(optionsStep.optionSelected.description,
          'Que você pensa que é? Esses veijões valem muito mais');
    });

    test('Should not be possible to get an option if none is selected', () {
      expect(() => optionsStep.optionSelected, throwsA(isA<Exception>()));
    });

    test('Shold not be possible to set an option if not found in options list',
        () {
      expect(() => optionsStep.setOptionSelected(4), throwsA(isA<Exception>()));
    });

    test('Shold be possible to get de next step by option selected', () {
      optionsStep.setOptionSelected(3);
      expect(optionsStep.nextStep().content,
          'João foi para o parque de diversões');
    });

    test(
        'Should not be possible to get the next step if anyone option is selected',
        () {
      expect(() => optionsStep.nextStep(), throwsA(isA<Exception>()));
    });
  });
}
