import 'package:despicable_me/models/character.dart';
import 'package:despicable_me/styleguide.dart';
import 'package:despicable_me/widgets/character_widget.dart';
import 'package:flutter/material.dart';

class CharacterListingScreen extends StatefulWidget {
  @override
  _CharacterListingScreenState createState() => _CharacterListingScreenState();
}

class _CharacterListingScreenState extends State<CharacterListingScreen> {
  PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
        initialPage: currentPage, keepPage: false, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              right: 16.0,
            ),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32.0, top: 8.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Naruto Shippuden',
                      style: AppTheme.display1,
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text: 'Characters',
                      style: AppTheme.display2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: <Widget>[
                  for (int i = 0; i < characters.length; i++)
                    CharacterWidget(
                      character: characters[i],
                      pageController: _pageController,
                      currentPage: i,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
