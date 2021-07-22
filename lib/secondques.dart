import 'package:flutter/material.dart';
import 'thirdques.dart';
import 'dart:ui';
class secondques extends StatefulWidget {
  int value;
  secondques({required this.value});

  @override
  _secondquesState createState() => _secondquesState(value);
}

class _secondquesState extends State<secondques> {

  int value;
  _secondquesState(this.value);

  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
        Center(
          child: Text(
            'Question 2',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'How did you appreciate the sanitation?',
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
                  builder: (context) => thirdques(value: (sliderValue + value)),
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