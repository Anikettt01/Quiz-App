import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/java/java_result_screen.dart';
import 'package:quiz_app_tutorial/sql/sql_questions.dart';
import '../models/question.dart';
import '/widgets/answer_card.dart';
import '/widgets/next_button.dart';


class SQLQuizScreen extends StatefulWidget {
  const SQLQuizScreen({super.key});

  @override
  State<SQLQuizScreen> createState() => _SQLQuizScreenState();
}

class _SQLQuizScreenState extends State<SQLQuizScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    List<Question> originalQuestions = sql_questions;
    sql_questions = List.from(originalQuestions);
    sql_questions.shuffle();

    sql_questions.forEach((question) {
    List<String> shuffledOptions = List.from(question.options);
    shuffledOptions.shuffle();

    Question newQuestion = Question(
    correctAnswerIndex: shuffledOptions.indexOf(question.options[question.correctAnswerIndex]),
    question: question.question,
    options: shuffledOptions,
    );

    sql_questions[sql_questions.indexOf(question)] = newQuestion;
    });
  }

  void pickAnswer(int value) {
    selectedAnswerIndex = value;
    final question = sql_questions[questionIndex];
    if (selectedAnswerIndex == question.correctAnswerIndex) {
      score++;
    }
    setState(() {});
  }

  void goToNextQuestion() {
    if (questionIndex < sql_questions.length - 1) {
      questionIndex++;
      selectedAnswerIndex = null;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final question = sql_questions[questionIndex];
    bool isLastQuestion = questionIndex == sql_questions.length - 1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQL MCQ Questions'),
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
