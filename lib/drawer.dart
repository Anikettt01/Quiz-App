import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/python/python_quiz_screen.dart';
import 'package:quiz_app_tutorial/sql/sql_quiz_screen.dart';
import 'package:quiz_app_tutorial/stl/stl_quiz_screen.dart';
import 'package:quiz_app_tutorial/swift/swift_quiz_screen.dart';
import 'c/c_quiz_screen.dart';
import 'cpp/cpp_quiz_screen.dart';
import 'java/java_quiz_screen.dart';
import 'java_script/js_quiz_screen.dart';

class DrawerQuiz extends StatefulWidget {
  const DrawerQuiz({super.key});

  @override
  State<DrawerQuiz> createState() => _DrawerQuizState();
}

class _DrawerQuizState extends State<DrawerQuiz> {
  Widget buildQuizCard(String language, Widget quizScreen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => quizScreen));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 5,
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey.shade400, Colors.grey.shade400],
              ),
            ),
            child: Center(
              child: Text(
                language,
                style: const TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Programming Language Quiz",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            buildQuizCard("C++", const CppQuizScreen()),
            buildQuizCard("Python", const PythonQuizScreen()),
            buildQuizCard("C", const CQuizScreen()),
            buildQuizCard("Java", const JavaQuizScreen()),
            buildQuizCard("JavaScript",const JsQuizScreen()),
            buildQuizCard("STL",const STLQuizScreen()),
            buildQuizCard("Swift",const SwiftQuizScreen()),
            buildQuizCard("SQL",const SQLQuizScreen()),
          ],
        ),
      ),
    );
  }
}
