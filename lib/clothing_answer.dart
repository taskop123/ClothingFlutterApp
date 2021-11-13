import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class ClothingAnswer extends StatelessWidget {
  final String _answerText;
  VoidCallback _tapped;

  ClothingAnswer(this._tapped, this._answerText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
          fixedSize:
              MaterialStateProperty.all<Size>(const Size.fromWidth(130))),
      child: Text(
        _answerText,
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
      onPressed: _tapped,
    );
  }
}
