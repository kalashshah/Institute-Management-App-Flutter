// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'dart:developer';
import 'package:flutter/material.dart';
import './student_timetable.dart';
import 'package:flutter/services.dart';
import '../models/tt.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
//       .then((_) {
//     runApp(TimeTablePage(
//         // l: [1, 2, 3, 4],
//         ));
//   });
// }

class Courses {
  int id;
  String make;

  Courses(this.id, this.make);

  static List<Courses> getCourse() {
    // ignore: deprecated_member_use, prefer_collection_literals
    var course_options = List<Courses>.empty();
    course_options.add(Courses(1, "CS201"));
    course_options.add(Courses(2, "CS261"));
    // course_options.add(Courses(3, "));

    return course_options;
  }
}

// ignore: must_be_immutable
class TimeTablePage extends StatefulWidget {
  // final List l;
  // TimeTablePage({required this.l});

  @override
  _TimeTableSet createState() => _TimeTableSet();
}

class _TimeTableSet extends State<TimeTablePage> {
  bool created = false;
  String? valueChoose1;
  String? valueChoose2;
  String? valueChoose3;
  String? valueChoose4;
  String? valueChoose5;
  String? valueChoose6;
  String? valueChoose7;
  String? valueChoose8;
  String? valueChoose9;
  String? valueChoose10;
  String? valueChoose11;
  String? valueChoose12;
  String? valueChoose13;
  String? valueChoose14;
  String? valueChoose15;
  String? valueChoose16;
  String? valueChoose17;
  String? valueChoose18;
  String? valueChoose19;
  String? valueChoose20;
  String? valueChoose21;
  String? valueChoose22;
  String? valueChoose23;
  String? valueChoose24;
  String? valueChoose25;
  String? valueChoose26;
  String? valueChoose27;
  String? valueChoose28;
  String? valueChoose29;
  String? valueChoose30;

  List<String> listItem = <String>["", "Course1", "Course2", "Course3", "Course4", "Course5", "Course6", "Course7", "Course8", "Course9", "Course10"];

  int i = 0;
  final formKey = GlobalKey<FormState>();
  // moveToStudentTimeTablePage(BuildContext context) async {
  //   if (formKey.currentState!.validate()) {
  //     setState(() {
  //       created = true;
  //     });
  //   }
  //   await Future.delayed(Duration(milliseconds: 1500));
  //   await Navigator.pushNamed(context, MyRoutes.student_timetable);
  //   setState(() {
  //     created = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    DropdownMenuItem<String> buildMenuItem(String course) =>
        DropdownMenuItem(value: course, child: Text(course));
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Time Table for the Batch 2020 (Sem III)'),
        ),
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                Column(children: [
                  Container(
                      margin: EdgeInsets.all(20),
                      child: Table(
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
                            TableRow(children: [
                              // ignore: prefer_const_literals_to_create_immutables
                              Column(children: const [
                                Text('Monday',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              DropdownButton(
                                value: valueChoose1,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose1 = value;
                                  });
                                },

                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose2,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose2 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose3,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose3 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),

                              DropdownButton(
                                value: valueChoose4,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose4 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose5,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose5 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose6,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose6 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ]),
                            TableRow(children: [
                              // ignore: prefer_const_literals_to_create_immutables
                              Column(children: const [
                                Text('Tuesday',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              DropdownButton(
                                value: valueChoose7,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose7 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose8,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose8 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose9,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose9 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose10,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose10 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose11,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose11 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose12,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose12 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Text('Wedensday',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              // ignore: prefer_const_literals_to_create_immutables
                              DropdownButton(
                                value: valueChoose13,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose13 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose14,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose14 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose15,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose15 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),

                              DropdownButton(
                                value: valueChoose16,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose16 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose17,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose17 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose18,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose18 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Text('Thursday',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              // ignore: prefer_const_literals_to_create_immutables
                              DropdownButton(
                                value: valueChoose19,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose19 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose20,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose20 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose21,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose21 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),

                              DropdownButton(
                                value: valueChoose22,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose22 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose23,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose23 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose24,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose24 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ]),
                            TableRow(children: [
                              Column(children: const [
                                Text('Friday',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                              ]),
                              // ignore: prefer_const_literals_to_create_immutables
                              DropdownButton(
                                value: valueChoose25,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose25 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose26,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose26 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose27,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose27 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),

                              DropdownButton(
                                value: valueChoose28,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose28 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose29,
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose29 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                              DropdownButton(
                                value: valueChoose30,
                                // items: listItem.map(buildMenuItem).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    valueChoose30 = value;
                                  });
                                },
                                items: listItem.map(
                                  (item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  },
                                ).toList(),
                              ),
                            ]),
                          ])),
                ])
              ],
            ),
            InkWell(
                splashColor: Colors.white,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StudentTimeTablePage(tableData)));
                  // {
                  // setState(() {
                  //   changeButton = true;
                  // });
                  // await Future.delayed(Duration(milliseconds: 1500));
                  // await Navigator.pushNamed(
                  //     context, MyRoutes.homeRoute);
                  // setState(() {
                  //   changeButton = false;
                  // });
                  // },
                  // ignore: unused_label
                  child:
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    width: created ? 50 : 150,
                    height: 50,
                    // color: Colors.deepPurple,
                    alignment: Alignment.center,
                    child: created
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(created ? "" : "Create",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                    // decoration: BoxDecoration()
                  );
                }),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("Create"),
          onPressed: () {
            tableData.add(valueChoose1);
            tableData.add(valueChoose2);
            tableData.add(valueChoose3);
            tableData.add(valueChoose4);
            tableData.add(valueChoose5);
            tableData.add(valueChoose6);
            tableData.add(valueChoose7);
            tableData.add(valueChoose8);
            tableData.add(valueChoose9);
            tableData.add(valueChoose10);
            tableData.add(valueChoose11);
            tableData.add(valueChoose12);
            tableData.add(valueChoose13);
            tableData.add(valueChoose14);
            tableData.add(valueChoose15);
            tableData.add(valueChoose16);
            tableData.add(valueChoose17);
            tableData.add(valueChoose18);
            tableData.add(valueChoose19);
            tableData.add(valueChoose20);
            tableData.add(valueChoose21);
            tableData.add(valueChoose22);
            tableData.add(valueChoose23);
            tableData.add(valueChoose24);
            tableData.add(valueChoose25);
            tableData.add(valueChoose26);
            tableData.add(valueChoose27);
            tableData.add(valueChoose28);
            tableData.add(valueChoose29);
            tableData.add(valueChoose30);

            for (int k = 0; k < 30; k++) {
              if (tableData[k] == null) {
                tableData[k] = " ";
              }
            }
            created
                ? Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                : Text(created ? "" : "Create",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ));
            // Add your onPressed code here!
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StudentTimeTablePage(tableData)),
            );
          },
          // child: Icon(Icons.navigation),
          // backgroundColor: Colors.green,
        ),
      ),
    );
  }
}
