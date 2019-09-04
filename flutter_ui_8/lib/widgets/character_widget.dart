import 'package:flutter/material.dart';
import 'package:flutter_ui_8/models/character.dart';
import 'package:flutter_ui_8/pages/character_details_screen.dart';
import 'package:flutter_ui_8/styleguide.dart';

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
            transitionDuration: const Duration(milliseconds: 350),
            pageBuilder: (context, _, __) =>
                CharacterDetailsScreen(character: character),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: ClipPath(
              clipper: CharacterCardBackGroundClipper(),
              child: Hero(
                tag: 'background-${character.name}',
                child: Container(
                  height: 0.7 * screenHeight,
                  width: 0.9 * screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: character.colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, -1.5),
            child: Hero(
              tag: 'image-${character.name}',
              child: Image.asset(
                character.imagePath,
                height: screenHeight * 0.55,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Hero(
                  tag: "name-${character.name}",
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
                  'Tap to Read more',
                  style: AppTheme.subHeading,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CharacterCardBackGroundClipper extends CustomClipper<Path> {
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
