// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback changeAnswer;
  final String answer;

  const Answer({
    Key? key,
    required this.changeAnswer,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)),
          onPressed: changeAnswer,
          child: Text(answer)),
    );
  }
}
