import 'package:quiz_app_tutorial/models/question.dart';

List<Question> sql_questions = [
  Question(
    question: 'Q. What is the full form of SQL?',
    correctAnswerIndex: 1,
    options: [
      ' Structured Query List',
      ' Structure Query Language',
      ' Sample Query Language',
      ' None of these.',
    ],
  ),
  Question(
    question: 'Q.  Which of the following is not a valid SQL type?',
    correctAnswerIndex: 2,
    options: [
      ' FLOAT',
      ' NUMERIC',
      ' DECIMAL',
      ' CHARACTER',
    ],
  ),
  Question(
    question: 'Q. Which of the following is not a DDL command?',
    correctAnswerIndex: 3,
    options: [
      ' TRUNCATE',
      ' ALTER',
      ' CREATE',
      ' UPDATE ',
    ],
  ),
  Question(
    question: 'Q. Which of the following are TCL commands?',
    correctAnswerIndex: 0,
    options: [
      ' COMMIT and ROLLBACK',
      ' UPDATE and TRUNCATE',
      ' SELECT and INSERT',
      ' GRANT and REVOKE',
    ],
  ),
  Question(
    question: 'Q. Which statement is used to delete all rows in a table without having the action logged?',
    correctAnswerIndex: 3,
    options: [
      ' DELETE',
      ' REMOVE',
      ' DROP',
      ' TRUNCATE',
    ],
  ),
  Question(
    question: 'Q.  SQL Views are also known as',
    correctAnswerIndex: 1,
    options: [
      ' Simple tables',
      ' Virtual tables',
      ' Complex tables',
      ' Actual Tables',
    ],
  ),
  Question(
    question: 'Q. How many Primary keys can have in a table?',
    correctAnswerIndex: 0,
    options: [
      ' Only 1',
      ' Only 2',
      ' Depends on no of Columns',
      ' Depends on DBA',
    ],
  ),
  Question(
    question: 'Q. Which of the following is not Constraint in SQL??',
    correctAnswerIndex: 3,
    options: [
      ' Primary Key',
      ' Not Null',
      ' Check',
      ' Union',
    ],
  ),
  Question(
    question:
    'Q. Which operator is used to compare a value to a specified list of values?',
    correctAnswerIndex: 3,
    options: [
      ' ANY',
      ' BETWEEN',
      ' ALL',
      ' IN',
    ],
  ),
  Question(
    question:
    'Q. What operator tests column for absence of data',
    correctAnswerIndex: 2,
    options: [
      ' NOT Operator',
      ' Exists Operator',
      ' IS NULL Operator',
      ' None of the above'
    ],
  ),
];
