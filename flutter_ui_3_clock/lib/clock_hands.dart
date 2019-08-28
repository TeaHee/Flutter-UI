import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_3_clock/hand_hour.dart';
import 'package:flutter_ui_3_clock/hand_minute.dart';
import 'package:flutter_ui_3_clock/hand_second.dart';

class ClockHands extends StatefulWidget {
  @override
  _ClockHandsState createState() => _ClockHandsState();
}

class _ClockHandsState extends State<ClockHands> {
  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = new DateTime.now();
    _timer = new Timer.periodic(const Duration(seconds: 1), setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = new DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
        aspectRatio: 1.0,
        child: new Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: new Stack(fit: StackFit.expand, children: <Widget>[
              new CustomPaint(
                painter: new HourHandPainter(
                    hours: dateTime.hour, minutes: dateTime.minute),
              ),
              new CustomPaint(
                painter: new MinuteHandPainter(
                    minutes: dateTime.minute, seconds: dateTime.second),
              ),
              new CustomPaint(
                painter: new SecondHandPainter(seconds: dateTime.second),
              ),
            ])));
  }
}
