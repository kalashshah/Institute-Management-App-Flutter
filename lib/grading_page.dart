import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:imsystem/utils/grading_data.dart';
import 'models/grade.dart';

class GradingCard extends StatelessWidget {
  final Exam exam;

  GradingCard(name, description, grade, {Key? key})
      : exam = Exam(name, description, grade),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: ListTile(
          leading: const Icon(Icons.assignment),
          title: Text(exam.name),
          subtitle: Text(exam.description, overflow: TextOverflow.ellipsis),
        ),
      ),
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ExamPage(exam),
        //   ),
        // );
      },
    );
  }
}

class GradingPage extends StatelessWidget {
  const GradingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Grades"),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: myExams
            .map((exam) => GradingCard(
                  exam.name,
                  exam.description,
                  Grade(exam.grade.marks, exam.grade.total),
                ))
            .toList(),
      ),
    );
  }
}
