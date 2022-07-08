import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void ChangeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // int leftDiceNumber = 1; //Change in value of the var
    return Center(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
                onTap: () {
                  ChangeDiceFace();
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                )),
            //  ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.teal,
            //     elevation: 0,
            //   ),
            //   child: Image.asset('images/dice$leftDiceNumber.png'),
            //   onPressed: () {
            //     setState(() {
            //       leftDiceNumber = Random().nextInt(6) + 1;
            //     });
            //   },
            // ),
          ),
          Expanded(
            child: GestureDetector(
                onTap: () {
                  ChangeDiceFace();
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                )),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(primary: Colors.teal),
            //   child: Image.asset('images/dice4.png'),
            //   onPressed: () {
            //     print('Right button got pressed.');
            //   },
            // ),
          ),
          //Text(leftDiceNumber.toString()),
        ],
      ),
    );
  }
}
