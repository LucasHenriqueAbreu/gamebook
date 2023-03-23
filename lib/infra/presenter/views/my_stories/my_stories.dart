import 'package:flutter/material.dart';
import 'package:gamebook/infra/presenter/views/new_story/new_story.dart';

class MyStories extends StatefulWidget {
  const MyStories({super.key});

  @override
  State<MyStories> createState() => _MyStoriesState();
}

class _MyStoriesState extends State<MyStories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _goToNewStory,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _goToNewStory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NewStory()),
    );
  }
}
