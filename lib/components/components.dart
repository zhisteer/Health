import 'package:flutter/material.dart';
import 'package:sports/workout/workout_start.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double size;
  void Function() onpressed;

  MyButton(
      {Key? key,
      required this.text,
      required this.size,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black)),
      child: Text(
        text,
        style: TextStyle(fontSize: size, color: Colors.black),
      ),
    );
  }
}
