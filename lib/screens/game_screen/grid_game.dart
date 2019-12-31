import 'package:flutter/material.dart';

class GridGame extends StatefulWidget {
  @override
  _GridGameState createState() => _GridGameState();
}

class _GridGameState extends State<GridGame>{
  Widget _verticalLine() {
    return new Container(
      margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      color: Theme.of(context).accentColor,
      width: 1.0);
  }

  Widget _horizontalLine() {
    return new Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      color: Theme.of(context).accentColor,
      height: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _horizontalLine(),
            _horizontalLine()
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _verticalLine(),
            _verticalLine()
          ],
        )
      ],
    );
  }
}
