import 'package:flutter/material.dart';
import 'sixthques.dart';
import 'dart:ui';
class fifthques extends StatefulWidget {
  int value;
  fifthques({required this.value});

  @override
  _fifthquesState createState() => _fifthquesState(value);
}

class _fifthquesState extends State<fifthques> {

  int value;
  _fifthquesState(this.value);

  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title:
        Center(
          child: Text(
            'Question 5',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'How likely are you to recommend us to your friend?',
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
                  builder: (context) => sixthques(value: (sliderValue + value)),
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