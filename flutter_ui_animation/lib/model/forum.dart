import 'package:flutter_ui_6/model/topic.dart';

class Forum {
  final String title;
  final String imagePath;
  final String rank;
  final List<Topic> topics;
  final String threads;
  final String subs;

  Forum(
      {this.title,
      this.imagePath,
      this.rank,
      this.threads,
      this.subs,
      this.topics});
}

final fortniteForum = Forum(
    title: "Fortnite",
    imagePath: "assets/images/fortnite.jpg",
    rank: "31",
    threads: "88",
    subs: "500+",
    topics: fortniteTopics);

final pubgForum = Forum(
    title: "PUBG",
    imagePath: "assets/images/pubg.png",
    rank: "25",
    threads: "120",
    subs: "1000+",
    topics: pubgTopics);

final dota2Forum = Forum(
    title: "Dota 2",
    imagePath: "assets/images/dota2.jpg",
    rank: "1",
    threads: "300",
    subs: "5000+",
    topics: dota2Topics);

final forums = [fortniteForum, pubgForum, dota2Forum];
