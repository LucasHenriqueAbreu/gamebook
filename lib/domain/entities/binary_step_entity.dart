import 'package:gamebook/domain/entities/decision_enum.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

class BinaryStepEntity extends StepEntity {
  final ParagraphEntity _yesStep;
  final ParagraphEntity _noStep;
  Decision _decision = Decision.no;

  BinaryStepEntity({
    required ParagraphEntity yesStep,
    required ParagraphEntity noStep,
    required ParagraphEntity backStep,
  })  : _yesStep = yesStep,
        _noStep = noStep,
        super(backStep: backStep);

  set decision(Decision newDecision) {
    _decision = newDecision;
  }

  @override
  ParagraphEntity nextStep() {
    return _decision == Decision.no ? _noStep : _yesStep;
  }
}
