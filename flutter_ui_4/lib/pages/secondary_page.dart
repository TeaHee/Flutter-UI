import 'package:flutter/material.dart';
import 'package:flutter_ui_4/common/content_heading_widget.dart';
import 'package:flutter_ui_4/common/popular_with_friends_game_widget.dart';
import 'package:flutter_ui_4/image_asset.dart';
import 'package:flutter_ui_4/model/last_played_game.dart';
import 'package:flutter_ui_4/styleguide/color.dart';
import 'package:flutter_ui_4/styleguide/text_styles.dart';

class SecondaryHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  game_sekiro,
                  height: 600,
                  fit: BoxFit.fitHeight,
                ),
                Container(
                  color: Colors.grey.withOpacity(0.5),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 60.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(width: 2, color: Colors.white),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(bottom: 32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: 'NEW GAME', style: newGameTextStyle),
                                TextSpan(text: '\n'),
                                TextSpan(
                                    text: 'Seikiro: Shadows Die Twice',
                                    style: newGameNameTextStyle)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          InkWell(
                            onTap: null,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 32),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4)),
                                  gradient: appGradient),
                              child: Text(
                                'Play',
                                style: newGameTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ContentHeadingWidget(
                    heading: 'Popular with Friends',
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (var i = 0; i < popularWithFriends.length; i++)
                          PopularWithFriendsWidget(
                            imagePath: popularWithFriends[i],
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ContentHeadingWidget(
                      heading: 'Continue playing',
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: appGradient,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                  child: Image.asset(
                                    lastPlayedGames[0].imagePath,
                                    width: 45,
                                    height: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  right: 8,
                                  top: 0,
                                  bottom: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: lastPlayedGames[0].name,
                                      style: headingTwoTextStyle),
                                  TextSpan(text: '\n'),
                                  TextSpan(
                                      text:
                                          '${lastPlayedGames[0].hoursPlayed} hours played',
                                      style: bodyTextStyle)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
