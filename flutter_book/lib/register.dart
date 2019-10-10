import 'package:flutter/material.dart';

bool _value = false;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: <Widget>[
                IconButton(
                  color: Color(0xFF5ABD8C),
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
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(children: <Widget>[
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "First & Last Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Mobile Phone",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Group Special Code (optional)",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Checkbox(
                  checkColor: Color(0xFFFFFFFF),
                  activeColor: Color(0xFF5ABD8C),
                  onChanged: (bool value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  value: _value,
                ),
                Text(
                  "Please sign me up for the monthly newsletter.",
                  style: TextStyle(
                      color: Color(0x50212121), fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                height: 56,
                minWidth: double.infinity,
                color: Color(0xFF5ABD8C),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                onPressed: () {
                  Navigator.of(context).pushNamed("/UserPage");
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
