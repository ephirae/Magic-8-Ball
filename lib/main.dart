import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCFD8DC),
      appBar: AppBar(
        backgroundColor: Color(0xFF455A64),
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

int imageNumber = Random().nextInt(5) + 1;

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              generateNewImage();
            });
          },
          child: Image.asset('images/ball$imageNumber.png'),
        ),
      ),
    );
  }
}

void generateNewImage() {
  imageNumber = Random().nextInt(5) + 1;
}
