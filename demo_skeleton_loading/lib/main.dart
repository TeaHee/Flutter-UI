import 'package:demo_timeline/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoSkeleton(),
    );
  }
}

class DemoSkeleton extends StatefulWidget {
  @override
  _DemoSkeletonState createState() => _DemoSkeletonState();
}

class _DemoSkeletonState extends State<DemoSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Skeleton(
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Skeleton(
                      height: 20,
                      width: 200,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Skeleton(
                      height: 20,
                      width: 120,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Skeleton(
                      height: 20,
                      width: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
