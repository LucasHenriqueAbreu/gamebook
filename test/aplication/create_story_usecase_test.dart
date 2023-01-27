import 'package:flutter_test/flutter_test.dart';
import 'package:gamebook/aplication/create_story_usecase.dart';
import 'package:gamebook/domain/repository/story_repository.dart';
import 'package:gamebook/infra/repository/memory/story_repository_memory.dart';

void main() {
  group('Tests to CreateStoryUsecase', () {
    late final StoryRepository repository;

    setUp(() {
      repository = StoryRepositoryMemory();
    });

    test('Should be create a instance of CreateStoryUsecase', () {
      final createStoryUsecase = CreateStoryUseCase(repository);
      expect(createStoryUsecase, isA<CreateStoryUseCase>());
    });
  });
}
