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
                Container(
                  color: Colors.red,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text(
                      "Note 1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.orange,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(2);
                    },
                    child: Text(
                      "Note 2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(3);
                    },
                    child: Text(
                      "Note 3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(4);
                    },
                    child: Text(
                      "Note 4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.deepPurple,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(5);
                    },
                    child: Text(
                      "Note 5",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.brown,
                  width: 500.0,
                  height: 50.0,
                  child: TextButton(
                    onPressed: () {
                      playSound(
                          6); // passing integer value for soundNum parameter
                    },
                    child: Text(
                      "Note 6",
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
