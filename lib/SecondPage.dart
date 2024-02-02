import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    var list = [
      'assets/7.jpg',
      'assets/2.jpg',
      'assets/3.jpg',
      'assets/4.jpg',
      'assets/5.jpg',
      'assets/6.jpg',
      'assets/1.jpg',
      'assets/8.jpg'
    ];
    var list1 = [
      'Cocktail Dress',
      'Blazer',
      'Trench Coat',
      'Duffle Coat',
      'Cape Coat',
      'Cocoon Coat',
      'Ulster Coat',
      'Anorak',
    ];
    var list2 = [
      '95',
      '87',
      '80',
      '120',
      '98',
      '190',
      '160',
      '45',
    ];
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, top: 100, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  EvaIcons.arrowBackOutline,
                  color: Colors.grey,
                ),
                Text(
                  "NEW IN ",
                  style: GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  EvaIcons.shoppingBagOutline,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(EvaIcons.options2Outline),
                Row(
                  children: [
                    Icon(EvaIcons.gridOutline),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(EvaIcons.squareOutline),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 36,
              ),
              itemCount: list.length,
              itemBuilder: (BuildContext context, index) {
                return GridTile(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              list[index],
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      color: Colors.black.withOpacity(0.7),
                                      child: Text(
                                        list1[index],
                                        style: GoogleFonts.inter(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(8.0),
                                      color: Colors.black.withOpacity(0.7),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.attach_money,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          Text(
                                            list2[index],
                                            style: GoogleFonts.inter(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 10,
                        left: 150,
                        child: Icon(
                          EvaIcons.heartOutline,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              },
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
