import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:imsystem/courses.dart';
import 'package:imsystem/utils/drawer.dart';

class Home extends StatelessWidget {
  var detailsOfUser = [];
  Home(this.detailsOfUser);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 40,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          drawer: DrawerWidget(),
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
                                width: 100.0,
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
                                      detailsOfUser.length > 0
                                          ? detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .name
                                              .text
                                          : "NO",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      detailsOfUser.length > 0
                                          ? detailsOfUser[
                                                  detailsOfUser.length - 1]
                                              .studentID
                                              .text
                                          : "NO",
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
                                  detailsOfUser.length > 0
                                      ? detailsOfUser[detailsOfUser.length - 1]
                                          .name
                                          .text
                                      : "NO",
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
                              Text(
                                  detailsOfUser.length > 0
                                      ? detailsOfUser[detailsOfUser.length - 1]
                                          .studentID
                                          .text
                                      : "NO",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(
                                  detailsOfUser.length > 0
                                      ? detailsOfUser[detailsOfUser.length - 1]
                                          .email
                                          .text
                                      : "NO",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(
                                  detailsOfUser.length > 0
                                      ? detailsOfUser[detailsOfUser.length - 1]
                                          .contactNumber
                                          .text
                                      : "NO",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Text(
                                  detailsOfUser.length > 0
                                      ? detailsOfUser[detailsOfUser.length - 1]
                                          .gender
                                          .text
                                      : "NO",
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Courses()),
                                      );
                                    },
                                    backgroundColor: Colors.black,
                                    height: 50,
                                    width: 150,
                                    text: 'COURSES',
                                    isReverse: true,
                                    borderWidth: 0,
                                    borderRadius: 15.0,
                                    selectedTextColor: Colors.black,
                                    transitionType:
                                        TransitionType.LEFT_BOTTOM_ROUNDER,
                                    textStyle: GoogleFonts.josefinSans(
                                        fontSize: 20,
                                        letterSpacing: 5,
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
