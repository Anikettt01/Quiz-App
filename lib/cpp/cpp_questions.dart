import 'package:quiz_app_tutorial/models/question.dart';

List<Question> cpp_questions = [
  Question(
    question: 'Q. Who invented C++?',
    correctAnswerIndex: 1,
    options: [
      ' Dennis Ritchie',
      ' Bjarne Stroustrup',
      ' Brian Kernighan',
      ' Ken Thompson',
    ],
  ),
  Question(
    question: 'Q. What is C++?',
    correctAnswerIndex: 2,
    options: [
      ' C++ is an object oriented programming language',
      ' C++ is a procedural programming language',
      ' C++ supports both procedural and object oriented programming language',
      ' C++ is a functional programming language',
    ],
  ),
  Question(
    question: 'Q. Which of the following is the correct syntax of including a user defined header files in C++?',
    correctAnswerIndex: 1,
    options: [
      '  #include [userdefined]',
      ' #include “userdefined”',
      ' #include <userdefined.h>',
      ' #include <userdefined>',
    ],
  ),
  Question(
    question: 'Q. Which of the following is used for comments in C++?',
    correctAnswerIndex: 3,
    options: [
      ' /* comment */',
      ' // comment */',
      ' // comment',
      '  both // comment or /* comment */',
    ],
  ),
  Question(
    question: 'Q. Which of the following user-defined header file extension used in c++?',
    correctAnswerIndex: 1,
    options: [
      ' .hg',
      ' .h',
      ' .cpp',
      ' .hf',
    ],
  ),
  Question(
    question: 'Q. Which of the following is a correct identifier in C++?',
    correctAnswerIndex: 1,
    options: [
      ' @VAR_1234',
      ' var_name',
      ' 7VARNAME',
      ' 7var_name',
    ],
  ),
  Question(
    question: 'Q. Which of the following is not a type of Constructor in C++',
    correctAnswerIndex: 3,
    options: [
      ' Default constructor',
      ' Parameterized constructor',
      ' Copy constructor',
      ' Friend constructor',
    ],
  ),
  Question(
    question: 'Q. Which of the following approach is used by C++?',
    correctAnswerIndex: 2,
    options: [
      ' Left-right',
      ' Right-left',
      ' Bottom-up',
      ' Top-down',
    ],
  ),
  Question(
    question:
    'Q. What is virtual inheritance in C++?',
    correctAnswerIndex: 3,
    options: [
      ' C++ technique to enhance multiple inheritance',
      ' C++ technique to ensure that private member of base class can be accessed somehow',
      ' C++ technique to avoid multiple inheritances of classes',
      ' C++ technique to avoid multiple copies of base class into children/derived class',
    ],
  ),
  Question(
    question:
    'Q. What happens if the following C++ statement is compiled and executed?'
        'int *ptr = NULL;'
        '                                         delete ptr;',
    correctAnswerIndex: 1,
    options: [
      ' The program is not semantically correct',
      ' The program is compiled and executed successfully',
      ' The program gives a compile-time error',
      ' The program compiled successfully but throws an error during run-time',
    ],
  ),
];
