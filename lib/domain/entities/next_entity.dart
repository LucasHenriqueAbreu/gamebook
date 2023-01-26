import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

class SimpleStepEntity extends StepEntity {
  final ParagraphEntity _next;
  final ParagraphEntity _back;

  SimpleStepEntity({
    required ParagraphEntity next,
    required ParagraphEntity back,
  })  : _next = next,
        _back = back;

  @override
  ParagraphEntity back() {
    return _back;
  }

  @override
  ParagraphEntity next() {
    return _next;
  }
}
