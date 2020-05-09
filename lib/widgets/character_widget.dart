import 'package:despicable_me/models/character.dart';
import 'package:despicable_me/pages/character_detail_screen.dart';
import 'package:despicable_me/styleguide.dart';
import 'package:flutter/material.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  final PageController pageController;
  final int currentPage;

  const CharacterWidget(
      {Key key, this.character, this.pageController, this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 350),
            pageBuilder: (context, _, __) =>
                CharacterDetailScreen(character: character),
          ),
        );
      },
      child: AnimatedBuilder(
        animation: pageController,
        builder: (context, child) {
          double value = 1;
          if (pageController.position.haveDimensions) {
            value = pageController.page - currentPage;
            value = (1 - (value.abs() * 0.6)).clamp(0.0, 1.0);
          }
          return Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: CharacterCardBackgroundClipper(),
                  child: Hero(
                    tag: 'background-${character.name}',
                    child: Container(
                      width: 0.85 * screenWidth,
                      height: 0.60 * screenHeight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: character.colors,
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.55, -1.0),
                child: Hero(
                  tag: 'image-${character.name}',
                  child: Image.asset(
                    character.imagePath,
                    height: 0.55 * screenHeight * value,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 48.0,
                  bottom: 16.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: 'name-${character.name}',
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          child: Text(
                            character.name,
                            style: AppTheme.heading,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Tap to Read More',
                      style: AppTheme.subHeading,
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
