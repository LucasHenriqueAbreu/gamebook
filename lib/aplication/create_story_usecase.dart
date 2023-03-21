import 'package:gamebook/core/base/usecase_base.dart';
import 'package:gamebook/domain/entities/story_entity.dart';
import 'package:gamebook/domain/repository/story_repository.dart';

class CreateStoryDTO {
  final String title;

  CreateStoryDTO({required this.title});
}

class CreateStoryUseCase
    implements UsecaseBase<CreateStoryDTO, Future<StoryEntity>> {
  final StoryRepository _repository;

  CreateStoryUseCase(this._repository);

  @override
  Future<StoryEntity> call(CreateStoryDTO input) {
    return _repository.create(StoryEntity(title: input.title));
  }
}
