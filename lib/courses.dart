import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/assgn_list.dart';
import './models/assgn_arrays.dart' as courses;

import 'course_page.dart';
import './utils/drawer.dart';

class Courses extends StatelessWidget {
  // var maAssgn = [];
  // var oopsAssgn = [];
  // var algoAssgn = [];
  // var hsAssgn = [];
  // var scAssgn = [];
  // var ecAssgn = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "YOUR COURSES",
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset(
                                      'assets/images/maths.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "MATHS",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/mathsBack.jpg",
                                              "Prof. Bhupendra Kumar",
                                              "bhupendra@iiitvadodara.ac.in",
                                              "https://meet.google.com/yaf-untz-smm",
                                              courses.maAssgn,
                                              "MA201",
                                              "Probability and Statistics")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child:
                                      SvgPicture.asset('assets/images/sc.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "ENV SCI",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/env.jpeg",
                                              "Dr. Vikas Kumar",
                                              "vikas@iiitvadodara.ac.in",
                                              "https://meet.google.com/swx-pbzp-ryq",
                                              courses.scAssgn,
                                              "SC201",
                                              "Environmental Science")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child:
                                      SvgPicture.asset('assets/images/cs1.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "ALGORITHM",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/algoBack.jpeg",
                                              "Dr. Jaishree Mayank",
                                              "jaishree_m@iiitvadodara.ac.in",
                                              "http://meet.google.com/pex-xbya-rvk",
                                              courses.algoAssgn,
                                              "CS203",
                                              "Design and Analysis of Algorithm")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: SvgPicture.asset(
                                      'assets/images/electronics.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "ELECTRONIC",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/ecBack.jpg",
                                              "Prof. Kamal Kumar",
                                              "kamal_kumar@iiitvadodara.ac.in",
                                              "https://meet.google.com/yiv-zuxd-tci",
                                              courses.ecAssgn,
                                              "EC201",
                                              "Electronics")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child:
                                      SvgPicture.asset('assets/images/hs.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "HUMANITIES",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/ecBack.jpg",
                                              "Prof. Radha Parikh",
                                              "radha_p@iiitvadodara.ac.in",
                                              "https://meet.google.com/ygc-vesx-gzd",
                                              courses.hsAssgn,
                                              "HS201",
                                              "Technical Writing")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/bckground.jpg"),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child:
                                      SvgPicture.asset('assets/images/cs2.svg'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "OODP",
                                style: GoogleFonts.josefinSans(
                                    fontSize: 18,
                                    letterSpacing: 3,
                                    color: Colors.yellowAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Container(
                                  width: 128,
                                  child: Text(
                                    "It is a fucked up course where you stare at numbers and draw baseless conclusions",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        // letterSpacing: 5,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: AnimatedButton(
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Coursepages(
                                              "assets/images/oopsBack.png",
                                              "Prof. Pramit Mazumdar",
                                              "pramit_m@iiitvadodara.ac.in",
                                              "https://meet.google.com/bjr-bidf-ska",
                                              courses.oopsAssgn,
                                              "CS201",
                                              "Object Oriented Programming and Designing")),
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
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          drawer: DrawerWidget()),
    );
  }
}
