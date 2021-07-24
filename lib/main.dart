import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void playSound(int soundNum) {
    // function to play sound
    final player = AudioPlayer();
    player
        .play('assets/sounds/note$soundNum.wav'); // passing soundNum parameter
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: Container( 
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(
            "Note 1",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone App"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1), // red
                buildKey(color: Colors.orange, soundNumber: 2), // red
                buildKey(color: Colors.yellow, soundNumber: 3), // red
                buildKey(color: Colors.green, soundNumber: 4), // red
                buildKey(color: Colors.brown, soundNumber: 5), // red
                buildKey(color: Colors.deepPurple, soundNumber: 6), // red
              ],
            ),
          ),
        ),
      ),
    );
  }
}
