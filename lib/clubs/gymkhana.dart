import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/clubs/dynamic_clubs.dart';
import 'package:imsystem/utils/drawer.dart';

class Gymkhana extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          drawer: DrawerWidget(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Gymkhana",
              style: GoogleFonts.josefinSans(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DynamicClubs(
                                  "This is cultural committee. We work with all cultural clubs",
                                  ["Shades", "Encore", "Masquerade", "Obscura"],
                                  [
                                    "assets/images/blueBackground.png",
                                    "assets/images/algoBack.jpeg"
                                  ],
                                  "Kreiva is the cultural fest of IIIT-V",
                                  "Kreiva")),
                        );
                      },
                      child: Text(
                        "Cultural Committee",
                        style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DynamicClubs(
                                  "This is technical committee. We work with all technical clubs",
                                  [
                                    "Engima",
                                    "FinOptimus",
                                    "The Coding Club",
                                    "Dot Design Club"
                                  ],
                                  [
                                    "assets/images/blueBackground.png",
                                    "assets/images/algoBack.jpeg"
                                  ],
                                  "Cerebro is the technical fest of IIIT-V",
                                  "Cerebro")),
                        );
                      },
                      child: Text(
                        "Technical Committee",
                        style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
