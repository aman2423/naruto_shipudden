import 'package:despicable_me/pages/character_listing_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naruto',
      home: CharacterListingScreen(),
      theme: ThemeData(
        canvasColor: Colors.white,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
        ),
      ),
    );
  }
}
