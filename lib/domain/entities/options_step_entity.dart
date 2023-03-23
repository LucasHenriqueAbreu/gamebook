import 'package:gamebook/domain/entities/option_entity.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';
import 'package:gamebook/domain/entities/step_entity.dart';

class OptionsStepEntity extends StepEntity {
  final List<Option> _options = [];
  Option? _optionSelected;

  OptionsStepEntity({required super.backStep});

  Option get optionSelected {
    if (_optionSelected != null) {
      return _optionSelected!;
    }
    // TODO: create custom exceptions;
    throw Exception('No option was selected');
  }

  @override
  ParagraphEntity nextStep() {
    return optionSelected.nextStep;
  }

  void addOption(Option opition) {
    _options.add(opition);
  }

  void setOptionSelected(int idOption) {
    final Option optionFound = _findOption(idOption);
    _optionSelected = optionFound;
  }

  Option _findOption(int idOption) {
    final optionFound =
        _options.where((option) => option.id == idOption).toList();
    if (optionFound.isEmpty) {
      // TODO: implement exception.
      throw Exception('Option not Found');
    }
    return optionFound.first;
  }
}
