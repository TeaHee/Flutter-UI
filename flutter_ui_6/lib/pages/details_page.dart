import 'package:flutter/material.dart';
import 'package:flutter_ui_6/common/app_background.dart';
import 'package:flutter_ui_6/common/label_value_widget.dart';
import 'package:flutter_ui_6/model/forum.dart';
import 'package:flutter_ui_6/model/topic.dart';
import 'package:flutter_ui_6/styleguide/colors.dart';
import 'package:flutter_ui_6/styleguide/text_styles.dart';

class DetailsPage extends StatefulWidget {
  final Forum forum;

  const DetailsPage({Key key, this.forum}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _fadeAnimation;
  Animation<double> _scaleAnimation;
  Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _offsetAnimation = Tween<Offset>(begin: Offset(0, 1), end: Offset(0, -0))
        .animate(_controller);
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AppBackground(
            firstColor: primaryColor,
            secondColor: secondOrangeCircleColor,
            thirdColor: thirdOrangeCircleColor,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FutureBuilder(
                future: _playAnimation(),
                builder: (context, snapshot) {
                  return FadeTransition(
                    opacity: _fadeAnimation,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 100.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          LabelValueWidget(
                            value: widget.forum.topics.length.toString(),
                            label: "topics",
                            labelStyle: whiteLabelTextStyle,
                            valueStyle: whiteValueTextStyle,
                          ),
                          LabelValueWidget(
                            value: widget.forum.threads,
                            label: "threads",
                            labelStyle: whiteLabelTextStyle,
                            valueStyle: whiteValueTextStyle,
                          ),
                          LabelValueWidget(
                            value: widget.forum.subs,
                            label: "subs",
                            labelStyle: whiteLabelTextStyle,
                            valueStyle: whiteValueTextStyle,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Hero(
                tag: widget.forum.title,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                  ),
                  child: Image.asset(widget.forum.imagePath),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
              ),
              child: Container(
                color: Colors.white,
                height: 230,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Topics',
                        style: subHeadingStyle.copyWith(fontSize: 26),
                      ),
                      Expanded(
                        child: SlideTransition(
                          position: _offsetAnimation,
                          child: ListView(
                            shrinkWrap: true,
                            children: <Widget>[
                              TopicsTile(topic: widget.forum.topics[0]),
                              TopicsTile(topic: widget.forum.topics[1]),
                              TopicsTile(topic: widget.forum.topics[0]),
                              TopicsTile(topic: widget.forum.topics[1]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 190,
            right: 25.0,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Material(
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    widget.forum.rank,
                    style: rankBigStyle,
                  ),
                ),
                color: Colors.white,
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopicsTile extends StatelessWidget {
  final Topic topic;

  const TopicsTile({Key key, this.topic}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                topic.question,
                style: topicQuestionTextStyle,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: primaryColor,
                ),
                child: Text(
                  topic.answerCount,
                  style: topicAnswerCountTextStyle,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Text(
              topic.recentAnswer,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: topicAnswerTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
