import 'package:flutter/material.dart';
import 'package:flutter_ui_6/common/forum_details_widget.dart';
import 'package:flutter_ui_6/common/forum_name_widget.dart';
import 'package:flutter_ui_6/model/forum.dart';
import 'package:flutter_ui_6/pages/details_page.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;

  const ForumCard({Key key, this.forum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: forum.title,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                forum: forum,
              ),
            ),
          );
        },
        child: SizedBox(
          width: 250.0,
          child: Card(
            margin:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70.0),
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    forum.imagePath,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ForumDetailsWidget(
                      forum: forum,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 70.0,
                    child: ForumNameWidget(
                      forum: forum,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
