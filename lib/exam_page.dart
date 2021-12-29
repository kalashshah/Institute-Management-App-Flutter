import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'models/grade.dart';

class ExamPage extends StatelessWidget {
  final Exam exam;
  final bool aboveAverage;
  ExamPage(this.exam, {Key? key})
      : aboveAverage =
            exam.getGrade().getMarks() >= exam.getGrade().getAverage(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(exam.getName()),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset('assets/images/blueBackground.png'),
                  Text(exam.getName(),
                      style: const TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15, left: 15),
                child: Text(
                  exam.getDescription(),
                  style: const TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: const Icon(Icons.check_rounded),
                  title: Text(
                      "Marks Obtained: ${exam.getGrade().getMarks()} / ${exam.getGrade().getTotal()}"),
                  subtitle:
                      Text("Percentage: ${exam.getGrade().getPercentage()}"),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: ListTile(
                  leading: Icon(
                      aboveAverage ? Icons.check_rounded : Icons.close_rounded),
                  title: Text(aboveAverage ? "Above Average" : "Below Average"),
                  subtitle: Text(aboveAverage
                      ? 'Great performance'
                      : 'Better luck next time'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset('assets/images/histogram.png'),
              ),
            ],
          ),
        ));
  }
}
