import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:imsystem/courses.dart';
import 'package:imsystem/faculty/course_page.dart';
import 'package:imsystem/faculty/your_course.dart';
import 'package:imsystem/utils/faculty_drawer.dart';
import '../models/assgn_arrays.dart' as courses;

class HomeFaculty extends StatelessWidget {
  var detailsOfUser = [];
  HomeFaculty(this.detailsOfUser);

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
                      image: AssetImage("assets/images/blueBackground.png"),
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
                                width: 150.0,
                                height: 200,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("PROFILE",
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      height: 80.0,
                                      child: SvgPicture.asset(
                                          'assets/images/profile.svg'),
                                    ),
                                    Text(
                                      detailsOfUser[detailsOfUser.length - 1]
                                          .name
                                          .text,
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "CS201",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
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
                              Text("Name",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                  detailsOfUser[detailsOfUser.length - 1]
                                      .name
                                      .text,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text("Details",
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 24,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  )),
                              // Text("CS201",
                              //     style: TextStyle(
                              //       fontSize: 18,
                              //     )),
                              Text(
                                  detailsOfUser[detailsOfUser.length - 1]
                                      .email
                                      .text,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(
                                  detailsOfUser[detailsOfUser.length - 1]
                                      .contactNumber
                                      .text,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(
                                  detailsOfUser[detailsOfUser.length - 1]
                                      .gender
                                      .text,
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 18.0, right: 18.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: SvgPicture.asset(
                                        'assets/images/pencilBox.svg'),
                                  ),
                                  AnimatedButton(
                                    onPress: () {
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "bhupendra_kumar@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FacultyCoursepages(
                                                  "assets/images/mathsBack.jpg",
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .name
                                                      .text,
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .email
                                                      .text,
                                                  "https://meet.google.com/yaf-untz-smm",
                                                  courses.maAssgn,
                                                  "MA201",
                                                  "Probability and Statistics")),
                                        );
                                      }
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "pramit_majumdar@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FacultyCoursepages(
                                                  "assets/images/oopsBack.png",
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .name
                                                      .text,
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .email
                                                      .text,
                                                  "https://meet.google.com/yaf-untz-smm",
                                                  courses.oopsAssgn,
                                                  "CS201",
                                                  "Object Oriented Programming and Designing")),
                                        );
                                      }
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "jaishree_mayank@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FacultyCoursepages(
                                                  "assets/images/algoBack.jpeg",
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .name
                                                      .text,
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .email
                                                      .text,
                                                  "https://meet.google.com/yaf-untz-smm",
                                                  courses.algoAssgn,
                                                  "CS203",
                                                  "Design and Analysis of Algorithm")),
                                        );
                                      }
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "vikas_kumar@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FacultyCoursepages(
                                                      "assets/images/envBack.jpg",
                                                      detailsOfUser[
                                                              detailsOfUser
                                                                      .length -
                                                                  1]
                                                          .name
                                                          .text,
                                                      detailsOfUser[
                                                              detailsOfUser
                                                                      .length -
                                                                  1]
                                                          .email
                                                          .text,
                                                      "https://meet.google.com/yaf-untz-smm",
                                                      courses.scAssgn,
                                                      "SC201",
                                                      "Environmental Science")),
                                        );
                                      }
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "radha_parikh@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  FacultyCoursepages(
                                                      "assets/images/hsBack.jpg",
                                                      detailsOfUser[
                                                              detailsOfUser
                                                                      .length -
                                                                  1]
                                                          .name
                                                          .text,
                                                      detailsOfUser[
                                                              detailsOfUser
                                                                      .length -
                                                                  1]
                                                          .email
                                                          .text,
                                                      "https://meet.google.com/yaf-untz-smm",
                                                      courses.hsAssgn,
                                                      "HS201",
                                                      "Technical Writing")),
                                        );
                                      }
                                      if (detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .email
                                              .text ==
                                          "kamal_kumar@iiitv.ac.in") {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => FacultyCoursepages(
                                                  "assets/images/ecBack.jpg",
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .name
                                                      .text,
                                                  detailsOfUser[
                                                          detailsOfUser.length -
                                                              1]
                                                      .email
                                                      .text,
                                                  "https://meet.google.com/yaf-untz-smm",
                                                  courses.ecAssgn,
                                                  "EC201",
                                                  "Digital Logic Designing")),
                                        );
                                      }
                                    },
                                    backgroundColor: Colors.black,
                                    height: 50,
                                    width: 150,
                                    text: 'Your Course',
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 15.0,
                                    selectedTextColor: Colors.black,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    child: SvgPicture.asset(
                                        'assets/images/pencilBox.svg'),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  child: SvgPicture.asset(
                                      'assets/images/pencilBox.svg'),
                                ),
                              ],
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
