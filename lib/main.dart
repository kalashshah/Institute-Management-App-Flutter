import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:imsystem/assgn_list.dart';
import 'package:imsystem/faculty/your_course.dart';
import 'package:imsystem/first_page.dart';
import 'package:imsystem/register.dart';
import 'course_page.dart';
import 'courses.dart';
import './login.dart';
import 'homepage.dart';
import './models/assgn_arrays.dart' as courses;
import './models/user_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      // theme: MyTheme.lightTheme(context),
      // darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => First_Page(),
        "/home": (context) => Home(detailsOfUser),
        "/login": (context) => Login(detailsOfUser),
        "/register": (context) => Register(),
        "/courses": (context) => Courses(),
        "/yourCourse": (context) => YourCourse(courses.maAssgn),
        "/coursePage": (context) => Coursepages(
            "assets/images/mathsBack.jpg",
            "Prof. Bhupendra Kumar",
            "bhupendra@iiitvadodara.ac.in",
            "https://meet.google.com/yaf-untz-smm",
            courses.maAssgn,
            "MA201",
            "Probability and Statistics"),
      },
    );
  }
}
