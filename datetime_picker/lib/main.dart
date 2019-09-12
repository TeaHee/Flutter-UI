import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FlatButton(
          color: Colors.blue,
          child: Text('Seleted'),
          onPressed: () {
            DatePicker.showDatePicker(
              context,
              dateFormat: 'dd-MM-yyyy',
              minDateTime: DateTime(1950, 1, 1),
              maxDateTime: DateTime(2050, 12, 31),
              onConfirm: (DateTime dateTime, List<int> selectedIndex) {
                print(new DateFormat('dd-MM-yyyy').format(dateTime));
              },
            );
          },
        ),
      ),
    );
  }
}
