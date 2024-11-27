import 'package:flutter/material.dart';
import 'package:practice/W6-S1/EXERCISE-4/main.dart';
import '../model/quiz.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(String) onTap;

  const QuestionScreen({
    super.key,
    required this.question,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildQuestionText(),
            const SizedBox(height: 40),
            _buildAnswerList(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionText() {
    return Text(
      question.title,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildAnswerList() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: question.possibleAnswers.length,
      itemBuilder: (context, index) {
        return _buildAnswerButton(question.possibleAnswers[index]);
      },
    );
  }

  Widget _buildAnswerButton(String answer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () => onTap(answer),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
   
