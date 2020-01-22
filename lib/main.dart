import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Widget buildKey({@required Color color, @required int note}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          _playSound(note);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, note: 1),
              buildKey(color: Colors.orange, note: 2),
              buildKey(color: Colors.yellow, note: 3),
              buildKey(color: Colors.green, note: 4),
              buildKey(color: Colors.teal, note: 5),
              buildKey(color: Colors.blue, note: 6),
              buildKey(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
