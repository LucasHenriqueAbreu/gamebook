import 'package:flutter/widgets.dart';
import 'package:gamebook/domain/repository/story_repository.dart';
import 'package:gamebook/infra/presenter/views/show_story/states.dart';

class ShowStoryController {
  final ValueNotifier<ShowStoryState> _state =
      ValueNotifier(ShowStoryStartState());
  StoryRepository repository;

  ShowStoryController(this.repository);

  ShowStoryState get state => _state.value;

  Future<void> _getStory(int id) async {
    final story = await repository.findById(id);
    _setState(ShowStorySuccessState(story));
  }

  void _setState(ShowStoryState newState) {
    _state.value = newState;
  }
}
