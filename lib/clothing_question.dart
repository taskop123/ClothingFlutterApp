import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ClothingQuestion extends StatelessWidget {
  final String _question;

  const ClothingQuestion(this._question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(4),
        child: Text(
          _question,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 30, color: Colors.blue),
        ));
  }
}
