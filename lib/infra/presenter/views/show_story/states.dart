import 'package:gamebook/domain/entities/story_entity.dart';

abstract class ShowStoryState {}

class ShowStoryStartState extends ShowStoryState {}

class ShowStoryLoadingState extends ShowStoryState {}

class ShowStorySuccessState extends ShowStoryState {
  final StoryEntity _storyEntity;
  ShowStorySuccessState(this._storyEntity);

  StoryEntity get story => _storyEntity;
}

class ShowStoryErrorState extends ShowStoryState {
  final Error _error;
  ShowStoryErrorState(this._error);

  Error get error => _error;
}
