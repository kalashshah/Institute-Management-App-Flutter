import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imsystem/clubs/cerebro.dart';
import 'package:imsystem/clubs/kreiva.dart';
import 'package:imsystem/clubs/main_clubs.dart';
import 'package:imsystem/utils/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ClubDets {
  String clubName;
  String clubDetails;
  String clubImage;

  ClubDets(this.clubDetails, this.clubImage, this.clubName);
}

class DynamicClubs extends StatelessWidget {
  String commBio;
  var clubNames = [];
  var images = [];
  String mainFest;
  String festName;
  var i = 0;

  DynamicClubs(
      this.commBio, this.clubNames, this.images, this.mainFest, this.festName);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Committee Page",
            style: GoogleFonts.josefinSans(
              fontSize: 26,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Container(
            //   height: 256,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //     image: AssetImage(images[0]),
            //   )),
            // ),
            CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: images.asMap().entries.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 256,
                      width: MediaQuery.of(context).size.width,
                      margin:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[i.key]))),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        commBio,
                        style: GoogleFonts.josefinSans(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          mainFest,
                          style: GoogleFonts.josefinSans(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: festName == "Kreiva"
                            ? ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.purple),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Kreiva()),
                                  );
                                },
                                child: Text(
                                  festName,
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            : ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.purple),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Cerebro()),
                                  );
                                },
                                child: Text(
                                  festName,
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Clubs under us: ",
                            style: GoogleFonts.josefinSans(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                              children: clubNames
                                  .map((item) => Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: new Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            item,
                                            style: GoogleFonts.josefinSans(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        ),
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  ClubDets club1, club2, club3, club4;
                  if (festName == "Kreiva") {
                    club1 = new ClubDets("Shades is an art club",
                        "assets/images/maths.svg", "Shades");
                    club2 = new ClubDets("Masquerade is drama club",
                        "assets/images/maths.svg", "Masquerade");
                    club3 = new ClubDets("Obscura is photography club",
                        "assets/images/maths.svg", "Obscura");
                    club4 = new ClubDets("Encore is music club",
                        "assets/images/maths.svg", "Encore");
                  } else {
                    club1 = new ClubDets("The Coding Club is for coding",
                        "assets/images/maths.svg", "The Coding Club");
                    club2 = new ClubDets("Engima is math club",
                        "assets/images/maths.svg", "Enigma");
                    club3 = new ClubDets("Dot is design club",
                        "assets/images/maths.svg", "The Dot Club");
                    club4 = new ClubDets("FinOptimus is finance club",
                        "assets/images/maths.svg", "FinOptimus");
                  }

                  var clubDetss = [];
                  clubDetss.add(club1);
                  clubDetss.add(club2);
                  clubDetss.add(club3);
                  clubDetss.add(club4);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Clubs(clubDetss),
                      ));
                },
                child: Text(
                  "Check out clubs",
                  style: GoogleFonts.josefinSans(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
