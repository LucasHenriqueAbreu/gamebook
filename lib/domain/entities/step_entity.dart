import 'package:gamebook/domain/entities/paragraph_entity.dart';

abstract class StepEntity {
  final ParagraphEntity _backStep;

  StepEntity({required ParagraphEntity backStep}) : _backStep = backStep;

  get backStep => _backStep;

  ParagraphEntity nextStep();
}
