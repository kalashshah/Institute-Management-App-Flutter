import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:imsystem/utils/drawer.dart';

import 'tutorial_page.dart';

class AssignmentList extends StatefulWidget {
  var assgnList = [];
  AssignmentList(this.assgnList);
  @override
  _AssignmentListState createState() => _AssignmentListState();
}

class _AssignmentListState extends State<AssignmentList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Assignments",
              style: GoogleFonts.josefinSans(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          drawer: DrawerWidget(),
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
                            widget.assgnList[index].assgnName,
                            style: GoogleFonts.josefinSans(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.assgnList[index].dueDate,
                            style: GoogleFonts.josefinSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            widget.assgnList[index].desc,
                            style: GoogleFonts.josefinSans(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                AnimatedButton(
                                  onPress: () {
                                    // logic to remove this tutorial....

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AssignmentList(widget.assgnList)),
                                    );
                                  },
                                  backgroundColor: Colors.green,
                                  height: 40,
                                  width: 100,
                                  text: 'Mark As Done', //✓
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
                                              TutorialPage(
                                                  widget
                                                      .assgnList[index].dueDate,
                                                  widget.assgnList[index]
                                                      .assgnName,
                                                  widget
                                                      .assgnList[index].desc)),
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
            itemCount: widget.assgnList.length,
          )),
    );
  }
}
