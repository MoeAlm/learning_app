import 'package:flutter/material.dart';
import 'package:learning_app/screens/color.dart';
import 'package:learning_app/screens/numbers_page.dart';
import 'package:learning_app/screens/phrases_page.dart';

import '../shared/components.dart';
import 'family_members.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Learning App',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.teal),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                defaultContainer(
                    text: 'Numbers',
                    opc: 500,
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NumbersPage();
                      }));
                    }),
                defaultContainer(
                    text: 'Family Members', opc: 400, onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return FamilyMembers();
                      }));
                }),
                defaultContainer(text: 'Colors', opc: 300, onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return ColorPage();
                      }));
                }),
                defaultContainer(text: 'Phrases', opc: 200, onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return PhrasesPage();
                      }));
                }),
              ],
            ),
          ),
          Image.asset(
            'assets/images/background/Book lover-bro.png',
            height: 290,
            width: 290,
          )
        ],
      ),
    );
  }
}
