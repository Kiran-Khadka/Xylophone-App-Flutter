import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone App"),
        ),
        body: SafeArea(
          child: Container(
            color: Colors.black,
            width: 200.0,
            height: 200.0,
            child: Column(
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note1.wav');
                  },
                  child: Text(
                    "Note 1",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note2.wav');
                  },
                  child: Text(
                    "Note 2",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note3.wav');
                  },
                  child: Text(
                    "Note 3",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note4.wav');
                  },
                  child: Text(
                    "Note 4",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note5.wav');
                  },
                  child: Text(
                    "Note 5",
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play('assets/sounds/note6.wav');
                  },
                  child: Text(
                    "Note 6",
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
