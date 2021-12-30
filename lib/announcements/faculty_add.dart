import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/announcements/faculty_check_ann.dart';
import 'package:imsystem/announcements/student_side.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import '../announcements/main_page.dart';
import '../models/announcementt.dart' as ann;

class FacultyAnnouncement extends StatefulWidget {
  @override
  State<FacultyAnnouncement> createState() => _FacultyAnnouncementState();
}

class _FacultyAnnouncementState extends State<FacultyAnnouncement> {
  TextEditingController _titleController = new TextEditingController();
  TextEditingController _descController = new TextEditingController();
  TextEditingController _dateController = new TextEditingController();
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
            centerTitle: true,
            title: Text(
              "Add Announcements",
              style: GoogleFonts.josefinSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            toolbarHeight: 40,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          drawer: FacultyDrawer(),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Add an announcement",
                      style: GoogleFonts.josefinSans(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                                        _titleController,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(10),
                                                      labelText: 'Title',
                                                      labelStyle: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return "Title is required";
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
                                                    controller: _descController,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(10),
                                                      labelText: 'Description',
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
                                                    controller: _dateController,
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.all(10),
                                                      labelText: 'Date',
                                                      labelStyle: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return "Date is required";
                                                      }
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 60.0,
                                                ),
                                                Builder(
                                                  builder: (context) => Center(
                                                      child: RaisedButton(
                                                    child: const Text('Add'),
                                                    onPressed: () {
                                                      if (formKey.currentState!
                                                          .validate()) {
                                                        _id += 1;

                                                        ann.Announcements acc = new ann
                                                                .Announcements(
                                                            title:
                                                                _titleController
                                                                    .text,
                                                            description:
                                                                _descController
                                                                    .text,
                                                            date:
                                                                _dateController
                                                                    .text);

                                                        ann.announcementList
                                                            .add(acc);
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  FacultyAnnouncements(
                                                                      ann.announcementList)),
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
              ],
            ),
          )),
    );
  }
}
