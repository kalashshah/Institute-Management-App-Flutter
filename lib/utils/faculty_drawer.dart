import 'package:flutter/material.dart';
import 'package:imsystem/announcements/faculty_add.dart';
import 'package:imsystem/attendance/attendance.dart';
import 'package:imsystem/faculty/faculty_homepage.dart';
import 'package:imsystem/models/user_details.dart';
import 'package:imsystem/register.dart';
import 'package:imsystem/timetable/pages/faculty_timetable_create.dart';

import '../login.dart';

class FacultyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25.0,
            ),
            SizedBox(
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100.0,
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/pic1.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      detailsOfUser.length > 0
                          ? detailsOfUser[detailsOfUser.length - 1].name.text
                          : "NO USER",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      detailsOfUser.length > 0
                          ? detailsOfUser[detailsOfUser.length - 1].email.text
                          : "NO USER",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomeFaculty(detailsOfUser)),
                          );
                        },
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Grading",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FacultyTimeTablePage()),
                          );
                        },
                        child: Text(
                          "Time Table",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FacultyAnnouncement()),
                          );
                        },
                        child: Text(
                          "Announcements",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Attendance()),
                          );
                        },
                        child: Text(
                          "Attendance",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    // TextButton(
                    //     onPressed: () {},
                    //     child: Text(
                    //       "Calendar",
                    //       style: TextStyle(
                    //         fontSize: 16,
                    //       ),
                    //     )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login(detailsOfUser)),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
