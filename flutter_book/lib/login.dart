import 'package:flutter/material.dart';

bool _value = false;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              children: <Widget>[
                IconButton(
                  color: Color(0xff5abd8c),
                  icon: Icon(Icons.navigate_before),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.maybePop(context);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              children: <Widget>[
                Text(
                  'Sign In',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff5abd8c), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x80efefef),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(
                  color: Color(0x75000000),
                ),
                hintText: 'Optional Group Special Code',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff5abd8c), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x80efefef),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(
                  color: Color(0x75000000),
                ),
                hintText: 'Email Address',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff5abd8c), width: 2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x80efefef),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(
                  color: Color(0x75000000),
                ),
                hintText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Checkbox(
                  checkColor: Color(0xffffffff),
                  activeColor: Color(0xff5abd8c),
                  onChanged: (bool value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  value: _value,
                ),
                Text(
                  'Stay Logged In',
                  style: TextStyle(
                      color: Color(0x50212121), fontWeight: FontWeight.w300),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/UserPage');
                    },
                    child: Text('Forgot Your Password ?',
                        style: TextStyle(
                          color: Color(0x50212121),
                          fontWeight: FontWeight.w300,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: MaterialButton(
              height: 56,
              minWidth: double.infinity,
              color: Color(0xff5abd8c),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {
                Navigator.of(context).pushNamed('/HomePage');
              },
              child: Text('Sign In',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
