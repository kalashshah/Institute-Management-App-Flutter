import 'package:flutter/material.dart';
import 'package:imsystem/announcements/main_page.dart';
import 'package:imsystem/clubs/gymkhana.dart';
import 'package:imsystem/register.dart';
import '../homepage.dart';
import '../login.dart';
import '../models/user_details.dart';

class DrawerWidget extends StatelessWidget {
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
                          ? detailsOfUser[detailsOfUser.length - 1]
                              .studentID
                              .text
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
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home(detailsOfUser)),
                      );
                    },
                    child: Text(
                      "HOME",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "GRADING",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainAnnouncemnt()),
                      );
                    },
                    child: Text(
                      "ANNOUNCEMENTS",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "ATTENDANCE",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "HOSTEL",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "CALENDAR",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Gymkhana()),
                      );
                    },
                    child: Text(
                      "CLUBS",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "TIME TABLE",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
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
                      "REGISTER",
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
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
