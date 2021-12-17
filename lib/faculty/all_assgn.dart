import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/faculty/tutorial_page_fac.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import '../models/assgn_arrays.dart' as courses;
import '../tutorial_page.dart';

class AllAssignments extends StatefulWidget {
  var assgnDets = [];
  AllAssignments(this.assgnDets);
  @override
  State<AllAssignments> createState() => _AllAssignmentsState();
}

class _AllAssignmentsState extends State<AllAssignments> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Assignments",
                style: GoogleFonts.josefinSans(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: Colors.white,
              centerTitle: true,
            ),
            drawer: FacultyDrawer(),
            body: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.assgnDets[index].assgnName,
                              style: GoogleFonts.josefinSans(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.assgnDets[index].dueDate,
                              style: GoogleFonts.josefinSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              widget.assgnDets[index].desc,
                              style: GoogleFonts.josefinSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AnimatedButton(
                                    onPress: () {
                                      // logic to remove this tutorial....

                                      widget.assgnDets.removeAt(index);
                                      setState(() {});
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           AssignmentList(widget.assgnList)),
                                      // );
                                    },
                                    backgroundColor: Colors.red,
                                    height: 40,
                                    width: 40,
                                    text: 'Delete', //X
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 10,
                                    selectedTextColor: Colors.white,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  AnimatedButton(
                                    onPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                // new page
                                                TutorialFacPage(
                                                    widget.assgnDets[index]
                                                        .dueDate,
                                                    widget.assgnDets[index]
                                                        .assgnName,
                                                    widget
                                                        .assgnDets[index].desc,
                                                    widget.assgnDets[index].id,
                                                    widget.assgnDets,
                                                    index)),
                                      );
                                    },
                                    backgroundColor: Colors.black,
                                    height: 40,
                                    width: 40,
                                    text: '>',
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 30.0,
                                    selectedTextColor: Colors.black,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 20,
                                        letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: widget.assgnDets.length,
            )));
  }
}
