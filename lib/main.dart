import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget createButton(int note, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createButton(1, Colors.red),
                createButton(2, Colors.yellow),
                createButton(3, Colors.orange),
                createButton(4, Colors.green),
                createButton(5, Colors.teal),
                createButton(6, Colors.blue),
                createButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
