import 'package:gamebook/domain/entities/story_entity.dart';
import 'package:gamebook/domain/repository/story_repository.dart';

class StoryRepositoryMemory implements StoryRepository {
  final List<StoryEntity> _storys = [];

  @override
  Future<void> create(StoryEntity story) {
    _storys.add(story);
    return Future.delayed(const Duration(milliseconds: 10));
  }
}
