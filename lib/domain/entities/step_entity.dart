import 'package:gamebook/domain/entities/paragraph_entity.dart';

abstract class StepEntity {
  ParagraphEntity next();
  ParagraphEntity back();
}
