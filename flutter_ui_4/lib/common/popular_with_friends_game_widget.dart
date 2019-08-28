import 'package:flutter/material.dart';
import 'package:flutter_ui_4/styleguide/text_styles.dart';

class PopularWithFriendsWidget extends StatelessWidget {
  final String imagePath;

  const PopularWithFriendsWidget({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(imagePath),
            ),
          ),
          Positioned(
              bottom: 10,
              right: 20,
              left: 20,
              child: InkWell(
                onTap: null,
                child: Material(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  elevation: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      'Play',
                      style: playWhiteTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
