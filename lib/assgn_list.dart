import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/course_page.dart';
import 'package:imsystem/tutorial_page.dart';

import 'courses.dart';

class MAData extends StatefulWidget {
  String finalPath;

  MAData(this.finalPath, {Key? key}) : super(key: key);
  @override
  _MADataState createState() => _MADataState();
}

class _MADataState extends State<MAData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: FutureBuilder(
              builder: (context, stats) {
                var showData = json.decode(stats.data.toString());

                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Card(
                              elevation: 5.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        showData[index]["name"],
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Due: ${showData[index]["due"]}",
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        showData[index]["desc"],
                                        style: GoogleFonts.josefinSans(
                                          fontSize: 14,
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
                                                index++;
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          MAData(widget
                                                              .finalPath)),
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
                                              transitionType: TransitionType
                                                  .LEFT_BOTTOM_ROUNDER,
                                              textStyle:
                                                  GoogleFonts.josefinSans(
                                                      fontSize: 14,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            AnimatedButton(
                                              onPress: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          // new page
                                                          TutorialPage(
                                                              showData[index]
                                                                  ["due"],
                                                              showData[index]
                                                                  ["name"],
                                                              showData[index]
                                                                  ["desc"])),
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
                                              transitionType: TransitionType
                                                  .LEFT_BOTTOM_ROUNDER,
                                              textStyle:
                                                  GoogleFonts.josefinSans(
                                                      fontSize: 20,
                                                      letterSpacing: 5,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )));
                    },
                    itemCount: showData.length);
              },
              future:
                  DefaultAssetBundle.of(context).loadString(widget.finalPath),
            )));
  }
}
