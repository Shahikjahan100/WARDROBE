import 'dart:ui';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/6.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Container(
            color: Colors.black.withOpacity(0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //ADDING ROW WHERE TEXT AND ICON OF BAG WILL APPEAR
                Container(
                  margin: const EdgeInsets.only(
                    top: 100,
                    left: 85,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(
                          "UNIQUE   FABRIC",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 20,
                            letterSpacing: 4,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: const Icon(
                          EvaIcons.shoppingBagOutline,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                //ADDING SEARCH COLUMN
                Container(
                  margin: const EdgeInsets.all(40),
                  height: screenHeight / 20,
                  width: screenWidth - 80,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Search",
                          style: GoogleFonts.inter(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "NEW IN",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Text(
                    "SALE",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40, top: 20),
                  child: Text(
                    "CLOTHING",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    "BELTS",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    "BAGS",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    "ACCESSORIES",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    "LOOKBOOK",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 40),
                  child: Text(
                    "KIDS CLOTHING",
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      //BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "Home",
              ),
              GButton(
                icon: EvaIcons.search,
                text: "Search",
              ),
              GButton(
                icon: EvaIcons.heartOutline,
                text: "WishList",
              ),
              GButton(
                icon: Icons.person,
                text: "Profile Setting",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
