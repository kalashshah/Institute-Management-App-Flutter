import 'package:flutter/material.dart';
import 'package:imsystem/grading_page.dart';

class AddExamPage extends StatelessWidget {
  const AddExamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Exam'),
      ),
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(decoration: InputDecoration(labelText: "Add title")),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
              decoration: InputDecoration(labelText: "Add description")),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => GradingPage(const [])),
                );
              },
              child: const Text("Add")),
        ),
      ]),
    );
  }
}
