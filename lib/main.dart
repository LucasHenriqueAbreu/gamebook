import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gamebook/infra/presenter/main_app.dart';
import 'package:gamebook/infra/presenter/views/new_story/new_story.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const NewStory(),
    );
  }
}
