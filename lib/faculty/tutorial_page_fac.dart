import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/faculty/all_assgn.dart';
import 'package:imsystem/faculty/your_course.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import '../models/assgn_arrays.dart' as courses;

class TutorialFacPage extends StatefulWidget {
  String dueDate, nameOfAssgn, assgnDesc;
  int id;
  var assgnList = [];
  int index;
  TutorialFacPage(this.dueDate, this.nameOfAssgn, this.assgnDesc, this.id,
      this.assgnList, this.index);

  @override
  _TutorialFacPageState createState() => _TutorialFacPageState();
}

class _TutorialFacPageState extends State<TutorialFacPage> {
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
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: FacultyDrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // SizedBox(
            //   height: 0.4,
            // ),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(widget.nameOfAssgn,
                          style: GoogleFonts.josefinSans(
                            fontSize: 52,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            child: Text(
                              "Due Date: ",
                              style: GoogleFonts.josefinSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(widget.dueDate,
                              style: GoogleFonts.josefinSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Container(
                        child: Text(widget.assgnDesc,
                            style: GoogleFonts.josefinSans(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedButton(
                      onPress: () {
                        Assignment assgn = new Assignment(
                            id: widget.id,
                            assgnName: widget.nameOfAssgn,
                            desc: widget.assgnDesc,
                            dueDate: widget.dueDate);
                        widget.assgnList.removeAt(widget.index);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AllAssignments(widget.assgnList)),
                        );
                      },
                      backgroundColor: Colors.red,
                      height: 40,
                      width: 150,
                      text: 'Delete', //X
                      isReverse: true,
                      borderWidth: 0,
                      borderRadius: 10,
                      selectedTextColor: Colors.white,
                      transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                      textStyle: GoogleFonts.josefinSans(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    AnimatedButton(
                      onPress: () {
                        // Here we will edit the data and display it.
                        var assgnToEdit = widget.assgnList[widget.index];
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
                                                        _assgNameController,
                                                    decoration: InputDecoration(
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
                                                    controller:
                                                        _assgnDueDateController,
                                                    decoration: InputDecoration(
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
                                                  builder: (context) => Center(
                                                      child: RaisedButton(
                                                    child: const Text('Add'),
                                                    onPressed: () {
                                                      if (formKey.currentState!
                                                          .validate()) {
                                                        // _id += 1;
                                                        assgnToEdit.assgnName =
                                                            _assgNameController
                                                                .text;
                                                        assgnToEdit.dueDate =
                                                            _assgnDueDateController
                                                                .text;
                                                        assgnToEdit.desc =
                                                            _assgnDescController
                                                                .text;

                                                        setState(() {});
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) => TutorialFacPage(
                                                                  assgnToEdit
                                                                      .dueDate,
                                                                  assgnToEdit
                                                                      .assgnName,
                                                                  assgnToEdit
                                                                      .desc,
                                                                  assgnToEdit
                                                                      .id,
                                                                  widget
                                                                      .assgnList,
                                                                  widget
                                                                      .index)),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Courses()),
                        // );
                      },
                      backgroundColor: Colors.black,
                      height: 40,
                      width: 150,
                      text: 'Edit', //✓
                      isReverse: true,
                      borderWidth: 0,
                      borderRadius: 10,
                      selectedTextColor: Colors.white,
                      transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                      textStyle: GoogleFonts.josefinSans(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )

            // SizedBox(
            //   height: 2,
            // ),
          ],
        ),
      ),
    );
  }
}
