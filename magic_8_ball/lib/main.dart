import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[500],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = math.Random().nextInt(5) + 1;
                print(ballNumber);
              });
            },
            child: Image(
              image: new AssetImage('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
