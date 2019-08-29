import 'package:flutter/material.dart';
import 'package:flutter_ui_6/common/forum_card.dart';
import 'package:flutter_ui_6/common/tab_text.dart';
import 'package:flutter_ui_6/model/forum.dart';

class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  int selectedTabIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: -20,
            bottom: 0,
            top: 0,
            width: 110.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TabText(
                  text: "Media",
                  isSelected: selectedTabIndex == 0,
                  onTabTap: () {
                    onTabTap(0);
                  },
                ),
                TabText(
                  text: "Streamers",
                  isSelected: selectedTabIndex == 1,
                  onTabTap: () {
                    onTabTap(1);
                  },
                ),
                TabText(
                  text: "Forum",
                  isSelected: selectedTabIndex == 2,
                  onTabTap: () {
                    onTabTap(2);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ForumCard(
                  forum: fortniteForum,
                ),
                ForumCard(
                  forum: pubgForum,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }
}
