import 'package:imsystem/models/grade.dart';

var cs201 = Course("CS201", 2, []);
var cs261 = Course("CS261", 2, []);
var instructor = Instructor("Dr. Pramit", 35, "123PM", [cs201, cs261], 1000000);

var myExams = [
  Exam(
    "CS261 Pre-midsem",
    "35 Multiple Choice, True/False, Short answer type Questions to be answered in 40 minutes. The questions would be Sequential. That is you cannot come back to an unanswered question. The duration of the test is 40 minutes. ",
    Grade(
      90,
      100,
      80,
    ),
    cs201,
  ),
  Exam(
    "CS261 Mid-sem",
    "35 Multiple Choice, True/False, Short answer type Questions to be answered in 40 minutes. The questions would be Sequential. Therefore you cannot come back to an unanswered question. The duration of the test is 40 minutes. ",
    Grade(
      98,
      100,
      90,
    ),
    cs201,
  ),
  Exam(
    "CS261 Pre-endsem",
    "THIS QUIZ IS ONLY FOR OFFLINE STUDENTS (NEW SECTION 1 AND NEW SECTION 2 GANDHINAGAR CAMPUS) 55 Multiple Choice, True/False, Short answer type Questions to be answered in 60 minutes. The questions would be HAVING FREE NAVIGATION. Therefore you can come back to an unanswered question. The duration of the test is 60 minutes. Right answers and Marks would be visible on 09.12.2021, morning.",
    Grade(
      80,
      100,
      90,
    ),
    cs201,
  ),
  Exam(
    "CS261 End-sem",
    "THIS QUIZ IS ONLY FOR OFFLINE STUDENTS (NEW SECTION 1 AND NEW SECTION 2 GANDHINAGAR CAMPUS) 55 Multiple Choice, True/False, Short answer type Questions to be answered in 60 minutes. The questions would be HAVING FREE NAVIGATION. Therefore you can come back to an unanswered question. The duration of the test is 60 minutes.",
    Grade(
      92,
      100,
      93,
    ),
    cs201,
  ),
];
