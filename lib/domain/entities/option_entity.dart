import 'package:gamebook/domain/entities/paragraph_entity.dart';

class Option {
  final int? _id;
  final ParagraphEntity _nextStep;
  final String _description;

  Option({
    required ParagraphEntity nextStep,
    required String description,
    int? id,
  })  : _nextStep = nextStep,
        _description = description,
        _id = id;

  int? get id => _id;

  String get description => _description;

  ParagraphEntity get nextStep => _nextStep;
}
