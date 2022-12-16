import 'package:flutter/material.dart';

import '../models/models.dart';
import '../shared/components.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Model> color = [
      Model(
          image: 'assets/images/colors/color_black.png',
          jpName: 'Burakku',
          enName: 'Black',
          sound: 'sounds/colors/black.wav'),
      Model(
          image: 'assets/images/colors/color_brown.png',
          jpName: 'Chairo',
          enName: 'Brown',
          sound: 'sounds/colors/brown.wav'),
      Model(
          image: 'assets/images/colors/yellow.png',
          jpName: 'Kiiro',
          enName: 'Yellow',
          sound: 'sounds/colors/yellow.wav'),
      Model(
          image: 'assets/images/colors/color_green.png',
          jpName: 'Midori',
          enName: 'Green',
          sound: 'sounds/colors/green.wav'),
      Model(
          image: 'assets/images/colors/color_red.png',
          jpName: 'Aka',
          enName: 'Red',
          sound: 'sounds/colors/red.wav'),
      Model(
          image: 'assets/images/colors/color_gray.png',
          jpName: 'Gurē',
          enName: 'Gray',
          sound: 'sounds/colors/gray.wav'),
      Model(
          image: 'assets/images/colors/color_white.png',
          jpName: 'Shiroi',
          enName: 'white',
          sound: 'sounds/colors/white.wav'),
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
            item(model: color[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: color.length,
      ),
    );
  }
}
