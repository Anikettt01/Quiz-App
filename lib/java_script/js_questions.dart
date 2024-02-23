import 'package:quiz_app_tutorial/models/question.dart';

List<Question> js_questions = [
  Question(
    question: 'Q. What is JavaScript?',
    correctAnswerIndex: 0,
    options: [
      ' JavaScript is a scripting language used to make the website interactive',
      ' JavaScript is an assembly language used to make the website interactive',
      ' JavaScript is a compiled language used to make the website interactive',
      ' None of the mentioned',
    ],
  ),
  Question(
    question: 'Q. Among the given statements, which statement defines closures in JavaScript?',
    correctAnswerIndex: 1,
    options: [
      ' JavaScript is a function that is enclosed with references to its inner function scope',
      ' JavaScript is a function that is enclosed with references to its lexical environment',
      ' JavaScript is a function that is enclosed with the object to its inner function scope',
      ' None of the mentioned',
    ],
  ),
  Question(
    question: 'Q. Arrays in JavaScript are defined by which of the following statements?',
    correctAnswerIndex: 0,
    options: [
      ' It is an ordered list of values',
      ' It is an ordered list of objects',
      ' It is an ordered list of string',
      ' It is an ordered list of functions',
    ],
  ),
  Question(
    question: 'Q. Will the following JavaScript code work?'
        'var js = (function(x) {return x*x;}(10));',
    correctAnswerIndex: 3,
    options: [
      ' Exception will be thrown',
      ' Memory leak',
      ' Error',
      ' Yes, perfectly',
    ],
  ),
  Question(
    question: 'Q. Which of the following is not javascript data types?',
    correctAnswerIndex: 3,
    options: [
      ' Null type',
      ' Undefined type',
      ' Number type',
      ' All of the mentioned',
    ],
  ),
  Question(
    question: 'Q. Which of the following object is the main entry point to all client-side JavaScript features and APIs?',
    correctAnswerIndex: 1,
    options: [
      ' Position',
      ' Window',
      ' Standard',
      ' Location',
    ],
  ),
  Question(
    question: 'Q. Which of the following can be used to call a JavaScript Code Snippet?',
    correctAnswerIndex: 0,
    options: [
      ' Function/Method',
      ' Preprocessor',
      ' Triggering Event',
      ' RMI',
    ],
  ),
  Question(
    question: 'Q. Which of the following scoping type does JavaScript use?',
    correctAnswerIndex: 2,
    options: [
      ' Sequential',
      ' Segmental',
      ' Lexical',
      ' Literal',
    ],
  ),
  Question(
    question:
    'Q. Why JavaScript Engine is needed?',
    correctAnswerIndex: 2,
    options: [
      ' Both Compiling & Interpreting the JavaScript',
      ' Parsing the javascript',
      ' Interpreting the JavaScript',
      ' Compiling the JavaScript',
    ],
  ),
  Question(
    question:
    'Q. What will be the result or type of error if p is not defined in the following JavaScript code snippet?',
    correctAnswerIndex: 1,
    options: [
      ' Value not found Error',
      ' Reference Error',
      ' Null',
      ' Zero',
    ],
  ),
];
