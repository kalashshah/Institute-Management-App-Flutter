import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/utils/drawer.dart';

class Maintanence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Maintanence")),
        drawer: DrawerWidget(),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.electrical_services_outlined),
              title: Text("Electrician",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.carpenter_outlined),
              title: Text("Carpenter",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.plumbing_outlined),
              title: Text("Plumber",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            ListTile(
              leading: Icon(Icons.cleaning_services_outlined),
              title: Text("Cleaner",
                  style: GoogleFonts.josefinSans(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
            )
            // DropdownButton(items:
            //   item
            // )
          ],
        ));
  }
}
