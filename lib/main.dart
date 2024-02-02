import "package:flutter/material.dart";
// import "package:wardrobe/FirstPage.dart";
// import "package:wardrobe/HomePage.dart";
import "package:wardrobe/SecondPage.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SecondPage(),
    );
  }
}
