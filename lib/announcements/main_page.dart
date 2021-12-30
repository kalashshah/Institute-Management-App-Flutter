import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/announcements/student_side.dart';
import 'package:imsystem/utils/drawer.dart';
import '../models/announcementt.dart' as ann;


class MainAnnouncemnt extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Announcements",
              style: GoogleFonts.josefinSans(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          drawer: DrawerWidget(),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text("Click to check out announcements",
                          style: GoogleFonts.josefinSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                StudentAnnouncement(ann.announcementList)),
                      );
                    },
                    child: Text("Check Out",
                        style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )
              ],
            )),
          )),
    );
  }
}
