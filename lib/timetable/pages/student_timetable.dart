// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
//       .then((_) {
//     runApp(StudentTimeTablePage(
//         // l: [1, 2, 3, 4]
//         ));
//   });
// }
class Assignment {
  int id;
  String assgnName;
  String desc;
  String dueDate;
  // String? type;

  Assignment({
    required this.id,
    required this.assgnName,
    required this.desc,
    required this.dueDate,
  });
}

// ignore: must_be_immutable
class StudentTimeTablePage extends StatefulWidget {
  var assgnList = [];
  StudentTimeTablePage(this.assgnList);
  @override
  State<StudentTimeTablePage> createState() => _StudentTimeTableSet();
}

class Courses {
  int id;
  String make;

  Courses(this.id, this.make);

  static List<Courses> getCourse() {
    // ignore: deprecated_member_use, prefer_collection_literals
    var courseOptions = List<Courses>.empty();
    courseOptions.add(Courses(1, "CS201"));
    courseOptions.add(Courses(2, "CS261"));
    // course_options.add(Courses(3, "));

    return courseOptions;
  }
}

class _StudentTimeTableSet extends State<StudentTimeTablePage> {
  bool created = false; 

  @override
  Widget build(BuildContext context) {
    // DropdownMenuItem<String> buildMenuItem(String course) =>
    //     DropdownMenuItem(value: course, child: Text(course));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Time Table for the Batch 2020 (Sem III)'),
        ),
        body: ListView(children: [
          SizedBox(
            height: 30,
            width: 30,
          ),
          Column(
            children: <Widget>[
              Column(
                children: [
                  // margin: EdgeInsets.all(20)
                  Table(
                      defaultColumnWidth: FixedColumnWidth(120.0),
                      border: TableBorder.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(children: [
                          Column(children: const [
                            Text('',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          // ignore: prefer_const_literals_to_create_immutables
                          Column(children: [
                            Text('09:00-10:00',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(children: const [
                            Text('10:15-11:15',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(children: const [
                            Text('11:30-12:30',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(children: const [
                            Text('02:00-03:00',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(children: const [
                            Text('03:00-04:00',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                          Column(children: const [
                            Text('04:00-05:00',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ]),
                        TableRow(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Column(children: const [
                              Text('Monday',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[0],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[1],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[2],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[3],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[4],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[5],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ])                        
                          ],
                        ),
                        TableRow(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Column(children: const [
                              Text('Tuesday',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[6],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[7],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[8],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[9],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[10],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[11],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ])                        
                          ],
                        ),
                        TableRow(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Column(children: const [
                              Text('Wednesday',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[12],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[13],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[14],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[15],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[16],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[17],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ])                        
                          ],
                        ),
                        TableRow(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Column(children: const [
                              Text('Thursday',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[18],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[19],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[20],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[21],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[22],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[23],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ])                        
                          ],
                        ),
                        TableRow(
                          children: [
                            // ignore: prefer_const_literals_to_create_immutables
                            Column(children: const [
                              Text('Friday',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[24],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[25],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[26],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[27],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[28],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ]),
                            widget.assgnList.isEmpty ? Center(child: Text("Nothing"),) : Column(children: [
                              Text(widget.assgnList[29],
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ])                        
                          ],
                        ),                        
                      ])
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
