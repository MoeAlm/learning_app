import 'package:flutter/material.dart';
import 'package:learning_app/models/models.dart';

import '../shared/components.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Model> phrases = [
      Model(
          jpName: 'Kōdoku suru koto o wasurenaide kudasai',
          enName: 'Don\'t forget to subscribe',
          sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
      Model(
          jpName: 'Watashi wa puroguramingu daisukidesu',
          enName: 'I Love programming',
          sound: 'sounds/phrases/i_love_programming.wav'),
      Model(
          jpName: 'Puroguramingu wa kantandesu',
          enName: 'Programming is easy',
          sound: 'sounds/phrases/programming_is_easy.wav'),
      Model(
          jpName: 'Doko ni iku no?',
          enName: 'Where are you going?',
          sound: 'sounds/phrases/where_are_you_going.wav'),
      Model(
          jpName: 'Namae wa nandesu ka?',
          enName: 'What is your name?',
          sound: 'sounds/phrases/what_is_your_name.wav'),
      Model(
          jpName: 'Watashi wa anime ga daisukidesu',
          enName: 'I love anime',
          sound: 'sounds/phrases/i_love_anime.wav'),
      Model(
          jpName: 'Go kibun wa ikagadesu ka?',
          enName: 'How are you feeling?',
          sound: 'sounds/phrases/how_are_you_feeling.wav'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Members',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.teal,
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) =>
            phraseItem(model: phrases[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: phrases.length,
      ),
    );
  }
}
