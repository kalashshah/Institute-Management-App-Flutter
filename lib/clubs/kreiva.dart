import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/utils/drawer.dart';

class Kreiva extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Krieva",
            style: GoogleFonts.josefinSans(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Text("Kreiva"),
        ),
      ),
    );
  }
}
