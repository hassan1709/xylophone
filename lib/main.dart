import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey({String text, String soundName, Color color}) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          player.play(soundName);
        },
        splashColor: Colors.white,
        child: Container(
          alignment: Alignment(0.0, 0.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Pacifico',
            ),
          ),
          color: color,
        ),
      ),
    );
  }

  Expanded buildKey2({String text, String soundName, Color color}) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: () {
          player.play(soundName);
        },
        child: Card(
          color: color,
          child: ListTile(
            leading: Icon(
              Icons.music_note,
              color: Colors.white,
              size: 40.0,
            ),
            title: Text(
              text,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontFamily: 'Pacifico',
              ),
              textAlign: TextAlign.left,
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey2(
                text: 'C',
                color: Colors.red,
                soundName: 'note1.wav',
              ),
              buildKey2(
                text: 'D',
                color: Colors.orange,
                soundName: 'note2.wav',
              ),
              buildKey2(
                text: 'E',
                color: Colors.yellow,
                soundName: 'note3.wav',
              ),
              buildKey2(
                text: 'F',
                color: Colors.green,
                soundName: 'note4.wav',
              ),
              buildKey2(
                text: 'G',
                color: Colors.teal,
                soundName: 'note5.wav',
              ),
              buildKey2(
                text: 'A',
                color: Colors.blue,
                soundName: 'note6.wav',
              ),
              buildKey2(
                text: 'B',
                color: Colors.purple,
                soundName: 'note7.wav',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
