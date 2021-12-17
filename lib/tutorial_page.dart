import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/utils/drawer.dart';

class TutorialPage extends StatefulWidget {
  String dueDate, nameOfAssgn, assgnDesc;
  TutorialPage(this.dueDate, this.nameOfAssgn, this.assgnDesc);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Assignment",
            style: GoogleFonts.josefinSans(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ),
                        // );
                      },
                      backgroundColor: Colors.green,
                      height: 40,
                      width: 150,
                      text: 'Mark As Done', //✓
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Courses()),
                        // );
                      },
                      backgroundColor: Colors.black,
                      height: 40,
                      width: 150,
                      text: 'Turn In', //✓
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
