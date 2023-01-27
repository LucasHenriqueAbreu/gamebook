import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/domain/entities/option_entity.dart';
import 'package:gamebook/domain/entities/paragraph_entity.dart';

void main() {
  group('Tests to OptionEntity', () {
    late final ParagraphEntity paragraph;

    setUp(() {
      paragraph = ParagraphEntity(content: 'João é de uma familia pobre');
    });

    test('Should be possible create a instance of Option', () {
      final option = Option(
          nextStep: paragraph,
          description: 'Sim, eu confio em você e vou vender os meus feijões');
      expect(option, isA<Option>());
    });
  });
}
