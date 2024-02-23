import 'package:quiz_app_tutorial/models/question.dart';

 List<Question> c_questions = [
  Question(
    question: 'Q. C preprocessors can have compiler specific features.',
    correctAnswerIndex: 0,
    options: [
      ' True',
      ' False',
      ' Depends on the standard',
      ' Depends on the platform',
    ],
  ),
  Question(
    question:
        'Q.  How many number of pointer (*) does C have against a pointer variable declaration?',
    correctAnswerIndex: 3,
    options: [
      ' 7',
      ' 127',
      ' 255',
      ' No Limit',
    ],
  ),
  Question(
    question:
        'Q. Which of the following is not possible statically in C language?',
    correctAnswerIndex: 0,
    options: [
      ' Jagged Array',
      ' Rectangular Array',
      ' Cuboidal Array',
      ' Multidimensional Array',
    ],
  ),
  Question(
    question: 'Q. What is the sizeof(char) in a 32-bit C compiler?',
    correctAnswerIndex: 2,
    options: [
      ' 1 bit',
      ' 2 bit',
      ' 1 byte',
      ' 2 byte',
    ],
  ),
  Question(
    question:
        'Q. Which of the following is not an operator in C?',
    correctAnswerIndex: 3,
    options: [
      ' ,',
      ' sizeof()',
      ' ~',
      ' None of the mentioned',
    ],
  ),
  Question(
    question: 'Q. scanf() is a predefined function in______header file.',
    correctAnswerIndex: 2,
    options: [
      ' stdlib. h',
      ' ctype. h',
      ' stdio. h',
      ' stdarg. h',
    ],
  ),
  Question(
    question: 'Q. What is meant by ‘a’ in the following C operation?'
        '                                         fp = fopen("Random.txt", "a");',
    correctAnswerIndex: 1,
    options: [
      ' Attach',
      ' Append',
      ' Apprehend',
      ' Add',
    ],
  ),
  Question(
    question: 'Q. What will be the value of the following assignment expression?'
        '             (x = foo())!= 1 considering foo() returns 2',
    correctAnswerIndex: 0,
    options: [
      ' 2',
      ' True',
      ' 1',
      ' 0',
    ],
  ),
  Question(
    question: 'Q. Which option should be selected to work the following C expression?'
        '             string p = "HELLO";',
    correctAnswerIndex: 1,
    options: [
      ' typedef char [] string;',
      ' typedef char *string;',
      ' typedef char [] string; and typedef char *string;',
      ' Such expression cannot be generated in C',
    ],
  ),
  Question(
    question:
        'Q. What are the elements present in the array of the following C code?'
            '                   int array[5] = {5};',
    correctAnswerIndex: 1,
    options: [
      ' 5, 5, 5, 5, 5',
      ' 5, 0, 0, 0, 0',
      ' 5, (garbage), (garbage), (garbage), (garbage)',
      ' (garbage), (garbage), (garbage), (garbage), 5',
    ],
  ),
];
