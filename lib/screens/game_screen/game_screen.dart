import 'package:flutter/material.dart';
import 'fields.dart';
import 'grid_game.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: Center(
        child: AspectRatio(
          aspectRatio: 1.00,
          child: Stack(
            children: <Widget>[
              Fields(),
              GridGame()
            ],
          )
        )
      )
    );
  }
}