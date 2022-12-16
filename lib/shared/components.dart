import 'package:flutter/material.dart';
import '../models/models.dart';
import 'package:audioplayers/audioplayers.dart';

Widget defaultContainer(
    {required String text, required int opc, required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.teal[opc], borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

Widget item({required Model model}) {
  final player = AudioPlayer();
  return Row(
    children: [
      Image.asset(model.image!),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.jpName,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            model.enName,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: IconButton(
          onPressed: () async {
            await player.play(AssetSource(model.sound));
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.teal[400],
            size: 40,
          ),
        ),
      )
    ],
  );
}
Widget phraseItem({required Model model}) {
  final player = AudioPlayer();
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.jpName,
            style: const TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            model.enName,
            style: const TextStyle(fontSize: 15),
          )
        ],
      ),
      const Spacer(),
      Padding(
        padding: const EdgeInsets.only(right: 15.0),
        child: IconButton(
          onPressed: () async {
            await player.play(AssetSource(model.sound));
          },
          icon: Icon(
            Icons.play_arrow,
            color: Colors.teal[400],
            size: 40,
          ),
        ),
      )
    ],
  );
}
