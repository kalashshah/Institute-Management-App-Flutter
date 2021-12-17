import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/array_assgn_list.dart';
import 'package:imsystem/assgn_list.dart';
import 'package:imsystem/faculty/all_assgn.dart';
import 'package:imsystem/faculty/your_course.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/assgn_arrays.dart' as courses;

class FacultyCoursepages extends StatelessWidget {
  String imagePath, nameOfProf, emailID, meetLink, courseCode, courseName;

  var assgnList = [];
  // Now we will create a constructor
  FacultyCoursepages(this.imagePath, this.nameOfProf, this.emailID,
      this.meetLink, this.assgnList, this.courseCode, this.courseName);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            toolbarHeight: 40,
          ),
          drawer: FacultyDrawer(),
          body: SingleChildScrollView(
            child: Container(
              color: Color.fromRGBO(196, 196, 196, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(imagePath),
                    )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 256,
                            ),
                            Container(
                                width: 250.0,
                                height: 200,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    SizedBox(
                                      height: 50.0,
                                      child: SvgPicture.asset(
                                          'assets/images/maths.svg'),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          nameOfProf,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        Text(
                                          emailID,
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 350,
                    width: 360,
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // elevation: 5.0,
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.0, left: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Google Meet Link",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  )),
                              RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                      text: "Join",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () async {
                                          var url = meetLink;
                                          await launch(url);
                                        })),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text("Course Details",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  )),
                              Text(courseCode,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  )),
                              Text(courseName,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Text(nameOfProf,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    child: SvgPicture.asset(
                                        'assets/images/books.svg'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                  Container(
                    height: 200,
                    width: 360,
                    child: Card(
                        // color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // elevation: 5.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AnimatedButton(
                                    onPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                YourCourse(assgnList)),
                                      );
                                    },
                                    backgroundColor: Colors.black,
                                    height: 40,
                                    width: 80,
                                    text: 'ADD',
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 15.0,
                                    selectedTextColor: Colors.black,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 18,
                                        letterSpacing: 3,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  AnimatedButton(
                                    onPress: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AllAssignments(assgnList)),
                                      );
                                    },
                                    backgroundColor: Colors.black,
                                    height: 40,
                                    width: 150,
                                    text: 'Assignments',
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 15.0,
                                    selectedTextColor: Colors.black,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 18,
                                        letterSpacing: 3,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
