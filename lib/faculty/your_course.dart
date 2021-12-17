import 'dart:io' as io;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/array_assgn_list.dart';
import 'package:imsystem/assgn_list.dart';
import 'package:imsystem/faculty/all_assgn.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import 'package:path_provider/path_provider.dart';
import '../models/assgn_arrays.dart' as courses;
import '../tutorial_page.dart';

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

class YourCourse extends StatefulWidget {
  var assgnList = [];
  var newAssgn = [];
  YourCourse(this.assgnList);
  @override
  State<YourCourse> createState() => _YourCourseState();
}

class _YourCourseState extends State<YourCourse> {
  TextEditingController _assgNameController = new TextEditingController();
  TextEditingController _assgnDescController = new TextEditingController();
  TextEditingController _assgnDueDateController = new TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void validate() {
    if (formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("NOT Validated");
    }
  }

  var tac = 0;
  var _id = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Assignment",
              style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
          ),
          drawer: FacultyDrawer(),
          body: Column(
            children: [
              Container(
                height: 256,
                // width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 26, 184, 1),
                    image: DecorationImage(
                      image: AssetImage("assets/images/blueBackground.png"),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text("ADD ASSIGNMENT",
                          style: GoogleFonts.josefinSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      // Displaying new assignment
                      SizedBox(
                        height: 80,
                      ),
                      ElevatedButton(
                        child: const Text('Add'),
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return SingleChildScrollView(
                                child: Container(
                                  height: 500,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Form(
                                              key: formKey,
                                              child: Column(
                                                children: [
                                                  // Image.asset('assets/images/pic1.png'),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 20.0),
                                                    child: TextFormField(
                                                      controller:
                                                          _assgNameController,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        labelText: 'Name',
                                                        labelStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return "Name is required";
                                                        } else {
                                                          return null;
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 20.0),
                                                    child: TextFormField(
                                                      controller:
                                                          _assgnDescController,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        labelText:
                                                            'Description',
                                                        labelStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return "Description is required";
                                                        } else {
                                                          return null;
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: 20.0),
                                                    child: TextFormField(
                                                      controller:
                                                          _assgnDueDateController,
                                                      decoration:
                                                          InputDecoration(
                                                        contentPadding:
                                                            EdgeInsets.all(10),
                                                        labelText: 'Due Date',
                                                        labelStyle: TextStyle(
                                                          fontSize: 15,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            value.isEmpty) {
                                                          return "Due Date is required";
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 60.0,
                                                  ),
                                                  Builder(
                                                    builder: (context) =>
                                                        Center(
                                                            child: RaisedButton(
                                                      child: const Text('Add'),
                                                      onPressed: () {
                                                        if (formKey
                                                            .currentState!
                                                            .validate()) {
                                                          _id += 1;
                                                          Assignment assgn = new Assignment(
                                                              id: _id,
                                                              assgnName:
                                                                  _assgNameController
                                                                      .text,
                                                              desc:
                                                                  _assgnDescController
                                                                      .text,
                                                              dueDate:
                                                                  _assgnDueDateController
                                                                      .text);
                                                          widget.assgnList
                                                              .add(assgn);

                                                          widget.newAssgn
                                                              .add(assgn);

                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    AllAssignments(
                                                                        widget
                                                                            .assgnList)),
                                                          );
                                                        }
                                                      },
                                                    )),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
