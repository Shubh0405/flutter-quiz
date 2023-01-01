import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function answerQuestion;
  final List questions;

  const Quiz(
      {super.key,
      required this.questionIndex,
      required this.answerQuestion,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question: questions[questionIndex]["question"]),
        ...questions[questionIndex]['answers']
            .map((answer) => Answer(
                changeAnswer: () => answerQuestion(
                    answer, questions[questionIndex]["correct_answer"]),
                answer: answer))
            .toList()
      ],
    );
  }
}
