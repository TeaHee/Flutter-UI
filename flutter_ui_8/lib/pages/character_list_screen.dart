import 'package:flutter/material.dart';
import 'package:flutter_ui_8/models/character.dart';
import 'package:flutter_ui_8/styleguide.dart';
import 'package:flutter_ui_8/widgets/character_widget.dart';

class CharacterListScreen extends StatefulWidget {
  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 1.0,
      initialPage: currentPage,
      keepPage: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 8.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Despicable Me',
                        style: AppTheme.display1,
                      ),
                      TextSpan(text: '\n'),
                      TextSpan(
                        text: 'Characters',
                        style: AppTheme.display2,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: <Widget>[
                    for (var i = 0; i < characters.length; i++)
                      CharacterWidget(
                        character: characters[i],
                      ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
