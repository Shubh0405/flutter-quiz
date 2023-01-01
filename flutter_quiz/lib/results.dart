// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Results extends StatelessWidget {
  final int result;
  final VoidCallback resetQuiz;

  const Results({
    Key? key,
    required this.result,
    required this.resetQuiz,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Center(
              child: Text(
            "Your score was $result",
            style: TextStyle(fontSize: 20),
          )),
          width: double.infinity,
          padding: EdgeInsets.all(15),
        ),
        ElevatedButton(onPressed: resetQuiz, child: Text("Reset Quiz"))
      ],
    );
  }
}
