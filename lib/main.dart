import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Sounds (1-50)',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Number Sounds (1-50)',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  expandedButtons(1, Colors.blue),
                  expandedButtons(2, Colors.green),
                  expandedButtons(3, Colors.blue),
                  expandedButtons(4, Colors.green),
                  expandedButtons(5, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(6, Colors.green),
                  expandedButtons(7, Colors.blue),
                  expandedButtons(8, Colors.green),
                  expandedButtons(9, Colors.blue),
                  expandedButtons(10, Colors.green),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(11, Colors.blue),
                  expandedButtons(12, Colors.green),
                  expandedButtons(13, Colors.blue),
                  expandedButtons(14, Colors.green),
                  expandedButtons(15, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(16, Colors.green),
                  expandedButtons(17, Colors.blue),
                  expandedButtons(18, Colors.green),
                  expandedButtons(19, Colors.blue),
                  expandedButtons(20, Colors.green),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(21, Colors.blue),
                  expandedButtons(22, Colors.green),
                  expandedButtons(23, Colors.blue),
                  expandedButtons(24, Colors.green),
                  expandedButtons(25, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(26, Colors.blue),
                  expandedButtons(27, Colors.green),
                  expandedButtons(28, Colors.blue),
                  expandedButtons(29, Colors.green),
                  expandedButtons(30, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(31, Colors.blue),
                  expandedButtons(32, Colors.green),
                  expandedButtons(33, Colors.blue),
                  expandedButtons(34, Colors.green),
                  expandedButtons(35, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(36, Colors.blue),
                  expandedButtons(37, Colors.green),
                  expandedButtons(38, Colors.blue),
                  expandedButtons(39, Colors.green),
                  expandedButtons(40, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(41, Colors.blue),
                  expandedButtons(42, Colors.green),
                  expandedButtons(43, Colors.blue),
                  expandedButtons(44, Colors.green),
                  expandedButtons(45, Colors.blue),
                ],
              ),
              Row(
                children: <Widget>[
                  expandedButtons(46, Colors.blue),
                  expandedButtons(47, Colors.green),
                  expandedButtons(48, Colors.blue),
                  expandedButtons(49, Colors.green),
                  expandedButtons(50, Colors.blue),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void playSounds(int soundNum) {
    final player = AudioCache();
    player.play('$soundNum.wav');
  }

  Widget expandedButtons(int num, Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FlatButton(
          color: color,
          onPressed: () {
            playSounds(num);
          },
          child: Text(
            '$num',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
