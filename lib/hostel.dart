//import 'dart:html';
import "package:flutter/material.dart";
import '../hostel/leave_application.dart';
import '../hostel/maintanence.dart';
import 'package:imsystem/utils/drawer.dart';

class Hostel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hostel")),
      drawer: DrawerWidget(),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           "Hostel",
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 40,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.message),
      //         title: Text("Leave Application"),
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => LeaveApplication()),
      //           );
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.notification_important),
      //         title: Text("Notice"),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home_repair_service),
      //         title: Text("Maintainence"),
      //       ),
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LeaveApplication()));
                    },
                    child: Text("Leave Applcation")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LeaveApplication()));
                    },
                    child: Text("Notice")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Maintanence()));
                    },
                    child: Text("Maintainence"))
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  alignment: FractionalOffset.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/hostel1.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel2.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel1.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel1.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel5.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel6.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel7.jpg",
                        width: 200,
                        height: 200,
                      ),
                      Image.asset(
                        "assets/images/hostel8.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
