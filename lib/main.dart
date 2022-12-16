import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_page.dart';

void main() {
  runApp(const LearningApp());
}

class LearningApp extends StatelessWidget {
  const LearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Learning App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

