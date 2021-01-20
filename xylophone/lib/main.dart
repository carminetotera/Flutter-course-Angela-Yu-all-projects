import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int sound}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        style: TextButton.styleFrom(
          backgroundColor: color,
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.orange, sound: 2),
              buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.teal, sound: 5),
              buildKey(color: Colors.blue, sound: 6),
              buildKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
      title: 'Flutter Demo',
    );
  }
}
