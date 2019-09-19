import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_4/common/content_heading_widget.dart';
import 'package:flutter_ui_4/common/last_played_game_tile_widget.dart';
import 'package:flutter_ui_4/common/rounded_image_widget.dart';
import 'package:flutter_ui_4/image_asset.dart';
import 'package:flutter_ui_4/model/friends.dart';
import 'package:flutter_ui_4/model/last_played_game.dart';
import 'package:flutter_ui_4/pages/secondary_page.dart';
import 'package:flutter_ui_4/styleguide/color.dart';
import 'package:flutter_ui_4/styleguide/text_styles.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.35;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(screenWidth * 0.4, 10),
            child: SvgPicture.asset(
              logo,
              height: logoHeight,
              color: logoTintColor,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondaryHomePage(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.menu,
                          color: tertiaryTextColor,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: tertiaryTextColor,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: <Widget>[
                            RoundedImageWidget(
                              imagePath: player1,
                              ranking: 39,
                              showRanking: true,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Hello',
                                      style: userNameTextStyle,
                                    ),
                                    TextSpan(text: '\n'),
                                    TextSpan(
                                        text: 'TaeHee',
                                        style: userNameTextStyle),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.0, right: 16.0, top: 16.0),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 16.0,
                                bottom: 32.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        'HOURS PLAYED',
                                        style: hoursPlayedLabelTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '297 Hours',
                                  style: hoursPlayedTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      ContentHeadingWidget(
                        heading: 'Last played games',
                      ),
                      for (var i = 0; i < lastPlayedGames.length; i++)
                        LastPlayedGameTileWidget(
                          lastPlayedGame: lastPlayedGames[i],
                          screenWidth: screenWidth,
                          gameProgress: lastPlayedGames[i].gameProgress,
                        ),
                      ContentHeadingWidget(
                        heading: 'Friends',
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              for (var i = 0; i < friends.length; i++)
                                RoundedImageWidget(
                                  imagePath: friends[i].imagePath,
                                  isOnline: friends[i].isOnline,
                                  name: friends[i].name,
                                )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
