import 'package:flutter/material.dart';

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 48,
                        width: 48,
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: CircleAvatar(),
                        ),
                      );
                    },
                  ),
                ),
                VerticalDivider(
                  width: 0,
                  color: Colors.black,
                ),
                Expanded(
                  flex: 9,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Dreamwalker',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Profile',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 4,
                                            spreadRadius: 3,
                                          )
                                        ],
                                        // image: DecorationImage(
                                        //   image: NetworkImage(
                                        //       'https://upload.wikimedia.org/wikipedia/en/thumb/1/18/Kids_See_Ghost_Cover.jpg/220px-Kids_See_Ghost'),
                                        //   fit: BoxFit.cover,
                                        // ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              size: 30,
                                            ),
                                            onPressed: () {},
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          FloatingActionButton(
                                            backgroundColor:
                                                Colors.grey.withOpacity(0.4),
                                            elevation: 0,
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'Kids See Ghosts',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'Kanye West and Kid Cudi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Show All',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Solastalgia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 21,
                                  ),
                                ),
                                subtitle: Text('Missy Higgins'),
                                trailing: Icon(Icons.more_vert),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Solastalgia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 21,
                                  ),
                                ),
                                subtitle: Text('Missy Higgins'),
                                trailing: Icon(Icons.more_vert),
                              ),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  'Solastalgia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 21,
                                  ),
                                ),
                                subtitle: Text('Missy Higgins'),
                                trailing: Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.black,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Dreamwalker',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Profile',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_right,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              4,
                                      decoration: BoxDecoration(
                                        color: Colors.pink,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 4,
                                            spreadRadius: 3,
                                          )
                                        ],
                                        // image: DecorationImage(
                                        //   image: NetworkImage(
                                        //       'https://upload.wikimedia.org/wikipedia/en/thumb/1/18/Kids_See_Ghost_Cover.jpg/220px-Kids_See_Ghost'),
                                        //   fit: BoxFit.cover,
                                        // ),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                              Icons.add,
                                              size: 30,
                                            ),
                                            onPressed: () {},
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          FloatingActionButton(
                                            backgroundColor:
                                                Colors.grey.withOpacity(0.4),
                                            elevation: 0,
                                            onPressed: () {},
                                            child: Icon(
                                              Icons.play_arrow,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          IconButton(
                                            icon: Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  'Kids See Ghosts',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'Kanye West and Kid Cudi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 5.5,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 1,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: Icon(Icons.menu),
                    ),
                  ),
                  VerticalDivider(
                    width: 0,
                    color: Colors.black,
                  ),
                  Expanded(
                    flex: 9,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Kids See Ghosts',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Kanye West and Kid Cudi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          FloatingActionButton(
                            backgroundColor: Colors.black,
                            elevation: 0,
                            onPressed: () {},
                            child: Icon(
                              Icons.pause,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
