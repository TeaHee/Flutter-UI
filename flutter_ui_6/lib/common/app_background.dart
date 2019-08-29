import 'package:flutter/material.dart';
import 'package:flutter_ui_6/styleguide/colors.dart';

class AppBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final height = constraint.maxHeight;
        final width = constraint.maxWidth;
        return Stack(
          children: <Widget>[
            Container(
              color: backgroundColor,
            ),
            Positioned(
              bottom: height / 4,
              left: -(height / 2 - width / 2),
              child: Container(
                height: height,
                width: height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: firstCircleColor,
                ),
              ),
            ),
            Positioned(
              top: -width * 0.8,
              left: width * 0.15,
              child: Container(
                height: width * 2.2,
                width: width * 1.2,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondCircleColor,
                ),
              ),
            ),
            Positioned(
              top: -width * 0.5,
              right: -width * 0.5,
              child: Container(
                height: width,
                width: width,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: thirdCircleColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
