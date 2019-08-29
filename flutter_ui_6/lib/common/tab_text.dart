import 'package:flutter/material.dart';
import 'package:flutter_ui_6/styleguide/text_styles.dart';

class TabText extends StatelessWidget {
  final bool isSelected;
  final Function onTabTap;
  final String text;

  TabText({this.text, this.isSelected = false, this.onTabTap});
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.58,
      child: InkWell(
        onTap: onTabTap,
        child: AnimatedDefaultTextStyle(
          style: isSelected ? selectedTabStyle : defaultTabStyle,
          duration: const Duration(milliseconds: 500),
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
