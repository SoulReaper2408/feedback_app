import 'package:flutter/material.dart';
import 'fifthques.dart';
import 'dart:ui';
class fourthques extends StatefulWidget {
  int value;
  fourthques({required this.value});

  @override
  _fourthquesState createState() => _fourthquesState(value);
}

class _fourthquesState extends State<fourthques> {

  int value;
  _fourthquesState(this.value);

  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
        Center(
          child: Text(
            'Question 4',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'How was the lighting?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  sliderValue.toString(),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                width: 250.0,
                child: Slider(
                  activeColor: Colors.purple,
                   inactiveColor: Colors.yellow,
                  value: sliderValue.toDouble(),
                  min: 1,
                  max: 5,
                  divisions: 4,
                  onChanged: (double _newValue) {
                    setState(() {
                      sliderValue = _newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0,),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                primary: Colors.purple, textStyle: TextStyle(fontSize: 15)),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) => fifthques(value: (sliderValue + value)),
                ),
                );
              },
              child: Text(
                'Next',
              ),
            ),
          ),
        ],
      ),
    );
  }
}