import 'package:gamebook/domain/entities/decision_enum.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

class BinaryStepEntity extends StepEntity {
  final ParagraphEntity _yes;
  final ParagraphEntity _no;
  final ParagraphEntity _back;
  Decision _decision = Decision.no;

  BinaryStepEntity(
      {required ParagraphEntity yes,
      required ParagraphEntity no,
      required ParagraphEntity back})
      : _yes = yes,
        _no = no,
        _back = back;

  set decision(Decision newDecision) {
    _decision = newDecision;
  }

  @override
  ParagraphEntity back() {
    return _back;
  }

  @override
  ParagraphEntity next() {
    return _decision == Decision.no ? _no : _yes;
  }
}
