import 'package:flutter/material.dart';

import '../models/models.dart';
import '../shared/components.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Model> family = [
      Model(
          image: 'assets/images/family_members/family_father.png',
          jpName: 'Chichioya',
          enName: 'Father',
          sound: 'sounds/family_members/father.wav'),
      Model(
          image: 'assets/images/family_members/family_mother.png',
          jpName: 'Hahaoya',
          enName: 'Mom',
          sound: 'sounds/family_members/mother.wav'),
      Model(
          image: 'assets/images/family_members/family_grandfather.png',
          jpName: 'Ojīsan',
          enName: 'Grandfather',
          sound: 'sounds/family_members/grand_father.wav'),
      Model(
          image: 'assets/images/family_members/family_grandmother.png',
          jpName: 'Sobo',
          enName: 'Grandmother',
          sound: 'sounds/family_members/grand_mother.wav'),
      Model(
          image: 'assets/images/family_members/family_daughter.png',
          jpName: 'Musume',
          enName: 'Daughter',
          sound: 'sounds/family_members/daughter.wav'),
      Model(
          image: 'assets/images/family_members/family_son.png',
          jpName: 'Musuko',
          enName: 'Son',
          sound: 'sounds/family_members/son.wav'),
      Model(
          image: 'assets/images/family_members/family_older_brother.png',
          jpName: 'Nīsan',
          enName: 'Older Brother',
          sound: 'sounds/family_members/older_brother.wav'),
      Model(
          image: 'assets/images/family_members/family_older_sister.png',
          jpName: 'Ane',
          enName: 'Older Sister',
          sound: 'sounds/family_members/older_sister.wav'),
      Model(
          image: 'assets/images/family_members/family_younger_brother.png',
          jpName: 'Otōto',
          enName: 'Younger Brother',
          sound: 'sounds/family_members/younger_brother.wav'),
      Model(
          image: 'assets/images/family_members/family_younger_sister.png',
          jpName: 'Imōto',
          enName: 'Younger Sister',
          sound: 'sounds/family_members/younger_sister.wav'),
    ];

    return  Scaffold(
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
            item(model: family[index]),
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: family.length,
      ),
    );
  }
}
