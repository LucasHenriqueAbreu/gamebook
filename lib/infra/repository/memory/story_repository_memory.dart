import 'package:gamebook/domain/entities/story_entity.dart';
import 'package:gamebook/domain/repository/story_repository.dart';

class StoryRepositoryMemory implements StoryRepository {
  final List<StoryEntity> _storys = [];

  @override
  Future<StoryEntity> create(StoryEntity story) async {
    final newStory = StoryEntity(title: story.title, id: _storys.length + 1);
    _storys.add(newStory);
    await Future.delayed(const Duration(milliseconds: 10));
    return newStory;
  }
}
