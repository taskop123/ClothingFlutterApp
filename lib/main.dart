import 'dart:ui';

import 'package:clothing_app/clothing_answer.dart';
import 'package:clothing_app/clothing_question.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyClothingApp());

class MyClothingApp extends StatefulWidget {
  const MyClothingApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyClothingAppState();
  }
}

class MyClothingAppState extends State<MyClothingApp> {
  final List _questions = [
    {
      'question': "Select your gender",
      'answer': ['Male', 'Female', 'No Answer']
    },
    {
      'question': "Select Top Clothing",
      'answer': ['T-Shirt', 'Pullover', 'Raincoat', 'Jacket']
    },
    {
      'question': "Select Bottom Clothing",
      'answer': ['Jeans', 'Skirt', 'Mini-scirt', 'Shorts']
    },
  ];

  void _iTappedTheButton() {
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = 0;
      } else {
        _questionIndex += 1;
      }
    });
  }

  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Clothing App!",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
            title: const Text(
              "My Clothing App",
              textAlign: TextAlign.center,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClothingQuestion(
                    _questions[_questionIndex]['question'].toString()),
                ...(_questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return ClothingAnswer(_iTappedTheButton, answer);
                })
              ],
            ),
          ),
        ));
  }
}
