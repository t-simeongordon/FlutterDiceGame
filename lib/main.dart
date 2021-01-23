import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;

  void rollDice(){
    leftDice = Random().nextInt(6)+1;
    rightDice = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rollDice();
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                    rollDice();
                  });
                },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
