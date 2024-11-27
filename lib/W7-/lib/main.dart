import 'package:flutter/material.dart';
import 'quiz_app.dart';
import 'model/quiz.dart';

void main() {

  Question q1 = const Question(
      title: "How are u",
      possibleAnswers: ["Good", "Not really", 'Ok'],
      goodAnswer: 'Good');
  Question q2 = const Question(
      title: "Which color is Your favourite?",
      possibleAnswers: ["Pink", "Purple", 'yellow'],
      goodAnswer: 'red');

  List<Question> myQuestions = [q1, q2];
  Quiz myQuiz = Quiz(title: "Crazy Quizz", questions: myQuestions);

  runApp(QuizApp(myQuiz));
}
