import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

class SimpleStepEntity extends StepEntity {
  final ParagraphEntity _nextStep;

  SimpleStepEntity({
    required ParagraphEntity nextStep,
    required ParagraphEntity backStep,
  })  : _nextStep = nextStep,
        super(backStep: backStep);

  @override
  ParagraphEntity nextStep() {
    return _nextStep;
  }
}
