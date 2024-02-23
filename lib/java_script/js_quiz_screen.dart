import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/cpp/cpp_questions.dart';
import 'package:quiz_app_tutorial/java/java_questions.dart';
import 'package:quiz_app_tutorial/java/java_result_screen.dart';
import '../models/question.dart';
import '/widgets/answer_card.dart';
import '/widgets/next_button.dart';
import 'js_questions.dart';


class JsQuizScreen extends StatefulWidget {
  const JsQuizScreen({super.key});

  @override
  State<JsQuizScreen> createState() => _JsQuizScreenState();
}

class _JsQuizScreenState extends State<JsQuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;


  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    List<Question> originalQuestions = js_questions;
    js_questions = List.from(originalQuestions);
    js_questions.shuffle();

    cpp_questions.forEach((question) {
    List<String> shuffledOptions = List.from(question.options);
    shuffledOptions.shuffle();

    Question newQuestion = Question(
    correctAnswerIndex: shuffledOptions.indexOf(question.options[question.correctAnswerIndex]),
    question: question.question,
    options: shuffledOptions,
    );

    js_questions[js_questions.indexOf(question)] = newQuestion;
    });
  }

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = js_questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < js_questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = js_questions[questionIndex];
    bool isLastQuestion = questionIndex == js_questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Java-Script MCQ Questions'),
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
