import 'package:flutter/material.dart';
import '../models/models.dart';
import '../shared/components.dart';

class NumbersPage extends StatelessWidget {
  final List<Model> numbers = [
    Model(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'One',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'Six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Sebun',
        enName: 'Seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyū',
        enName: 'Nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Model(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Jū',
        enName: 'Ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.teal,
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) =>
            item(model: numbers[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: numbers.length,
      ),
    );
  }
}
