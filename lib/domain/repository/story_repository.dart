import 'package:gamebook/domain/entities/story_entity.dart';

abstract class StoryRepository {
  Future<StoryEntity> create(StoryEntity story);
}
