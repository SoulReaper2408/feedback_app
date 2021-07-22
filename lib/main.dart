import 'package:flutter/material.dart';
import 'firstques.dart';
import 'dart:ui';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(child: Text('Feedback')),
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'Start feedback',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                wordSpacing: 5.0,
                color: Colors.purple,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Container(
          alignment: Alignment.center,
          child: ElevatedButton(
            child: Text(
              'Start',
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.purple, textStyle: TextStyle(fontSize: 15)),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => firstques(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
