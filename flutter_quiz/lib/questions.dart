// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;

  Question({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(30),
        child: Text(question,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 20)));
  }
}
