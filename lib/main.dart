import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';

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
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceNumber = 1;
  int rightdiceNumber = 1;

  void changeFaceDice() {
    setState(() {
      leftdiceNumber = Random().nextInt(6) + 1;
      rightdiceNumber = Random().nextInt(6) + 1;
      print('Right button got pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFaceDice();
              },
              child: Image.asset('images/dice$leftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFaceDice();
              },
              child: Image.asset('images/dice$rightdiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
