import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/java/java_result_screen.dart';
import '../models/question.dart';
import '/widgets/answer_card.dart';
import '/widgets/next_button.dart';
import 'java_questions.dart';

class JavaQuizScreen extends StatefulWidget {
  const JavaQuizScreen({super.key});

  @override
  State<JavaQuizScreen> createState() => _JavaQuizScreenState();
}

class _JavaQuizScreenState extends State<JavaQuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    List<Question> originalQuestions = java_questions;
    java_questions = List.from(originalQuestions);
    java_questions.shuffle();

    java_questions.forEach((question) {
    List<String> shuffledOptions = List.from(question.options);
    shuffledOptions.shuffle();

    Question newQuestion = Question(
    correctAnswerIndex: shuffledOptions.indexOf(question.options[question.correctAnswerIndex]),
    question: question.question,
    options: shuffledOptions,
    );

    java_questions[java_questions.indexOf(question)] = newQuestion;
    });
  }
  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = java_questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < java_questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = java_questions[questionIndex];
    bool isLastQuestion = questionIndex == java_questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Java MCQ Questions'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              question.question,
              style: const TextStyle(
                fontSize: 21,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: question.options.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: selectedAnswerIndex == null
                      ? () => pickAnswer(index)
                      : null,
                  child: AnswerCard(
                    currentIndex: index,
                    question: question.options[index],
                    isSelected: selectedAnswerIndex == index,
                    selectedAnswerIndex: selectedAnswerIndex,
                    correctAnswerIndex: question.correctAnswerIndex,
                  ),
                );
              },
            ),
            // Next Button
            isLastQuestion
                ? RectangularButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => JavaResultScreen(
                      score: score,
                    ),
                  ),
                );
              },
              label: 'Finish',
            )
                : RectangularButton(
              onPressed:
              selectedAnswerIndex != null ? goToNextQuestion : null,
              label: 'Next',
            ),
          ],
        ),
      ),
    );
  }
}
