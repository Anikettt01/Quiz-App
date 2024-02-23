import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/java/java_result_screen.dart';
import 'package:quiz_app_tutorial/stl/stl_questions.dart';
import '../models/question.dart';
import '/widgets/answer_card.dart';
import '/widgets/next_button.dart';


class STLQuizScreen extends StatefulWidget {
  const STLQuizScreen({super.key});

  @override
  State<STLQuizScreen> createState() => _STLQuizScreenState();
}

class _STLQuizScreenState extends State<STLQuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;


  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    List<Question> originalQuestions = stl_questions;
    stl_questions= List.from(originalQuestions);
    stl_questions.shuffle();

    stl_questions.forEach((question) {
    List<String> shuffledOptions = List.from(question.options);
    shuffledOptions.shuffle();

    Question newQuestion = Question(
    correctAnswerIndex: shuffledOptions.indexOf(question.options[question.correctAnswerIndex]),
    question: question.question,
    options: shuffledOptions,
    );

    stl_questions[stl_questions.indexOf(question)] = newQuestion;
    });
  }

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = stl_questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < stl_questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = stl_questions[questionIndex];
    bool isLastQuestion = questionIndex == stl_questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('STL MCQ Questions'),
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
