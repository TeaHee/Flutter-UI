import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          actions: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Prime',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' video',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 180.0,
                ),
                IconButton(
                  onPressed: () {
                    debugPrint('Search button tapped');
                  },
                  icon: Icon(
                    Icons.search,
                    size: 35,
                  ),
                )
              ],
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: ListView(),
      ),
    );
  }
}
