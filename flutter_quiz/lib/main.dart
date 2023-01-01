import 'package:flutter/material.dart';
import 'package:flutter_quiz/answers.dart';
import 'package:flutter_quiz/questions.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/results.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(answer, correctAnswer) {
    setState(() {
      questionIndex = questionIndex + 1;
      if (correctAnswer == answer) {
        totalScore = totalScore + 1;
      }
    });
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      {
        "question": "Who won 2022 FIFA world cup?",
        "answers": ["Argentina", "France", "Portugal", "Croatia"],
        "correct_answer": "Argentina"
      },
      {
        "question": "Who hosted 2022 FIFA World Cup?",
        "answers": ["USA", "India", "Qatar", "Brazil"],
        "correct_answer": "Qatar"
      },
      {
        "question": "Who won 2018 FIFA World cup?",
        "answers": ["Croatia", "Belgium", "France", "England"],
        "correct_answer": "France"
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
                questions: questions)
            : Results(
                result: totalScore,
                resetQuiz: resetQuiz,
              ),
      ),
    );
  }
}
