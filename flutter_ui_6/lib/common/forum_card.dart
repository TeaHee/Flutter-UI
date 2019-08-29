import 'package:flutter/material.dart';
import 'package:flutter_ui_6/model/forum.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;

  const ForumCard({Key key, this.forum}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 90.0),
        elevation: 20.0,
      ),
    );
  }
}
