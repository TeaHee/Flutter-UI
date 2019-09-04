import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ui_8/models/character.dart';
import 'package:flutter_ui_8/styleguide.dart';

class CharacterDetailsScreen extends StatefulWidget {
  final Character character;

  const CharacterDetailsScreen({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailsScreenState createState() => _CharacterDetailsScreenState();
}

class _CharacterDetailsScreenState extends State<CharacterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: 'background-${widget.character.name}',
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.character.colors,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.close,
                    ),
                    color: Colors.white.withOpacity(0.9),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Hero(
                    tag: 'image-${widget.character.name}',
                    child: Image.asset(
                      widget.character.imagePath,
                      height: screenHeight * 0.45,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 8.0,
                  ),
                  child: Hero(
                    tag: 'name-${widget.character.name}',
                    child: Text(
                      widget.character.name,
                      style: AppTheme.heading,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32.0, 0, 8.0, 32.0),
                  child: Text(
                    widget.character.description,
                    style: AppTheme.subHeading,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
