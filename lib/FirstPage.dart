import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _currentIndex = 0;

  final List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Image carousel with dots
          CarouselSlider(
            options: CarouselOptions(
              height: screenHeight - 20,
              viewportFraction: 1.0, // Set to 1.0 to cover the whole width
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: images.map((imagePath) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          // Dot indicator at the bottom center
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.map((image) {
                int index = images.indexOf(image);
                return Container(
                  width: _currentIndex == index
                      ? 16.0
                      : 8.0, // Adjust the width of the current dot
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: _currentIndex == index
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    // shape: BoxShape.rectangle,
                    color: _currentIndex == index ? Colors.white : Colors.grey,
                  ),
                );
              }).toList(),
            ),
          ),
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
          Positioned(
            top: 200,
            left: 50,
            child: Text(
              "NEW IN",
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 275,
            left: 220,
            child: Text(
              "FW 24",
              style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
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
