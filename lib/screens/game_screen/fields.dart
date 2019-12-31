import 'package:flutter/material.dart';
import 'package:game_of_velha/screens/game_screen/game_controller.dart';
import 'package:provider/provider.dart';

class Fields extends StatefulWidget {
  @override
  _FieldsState createState() => _FieldsState();
}

class _FieldsState extends State<Fields>{
  Widget _fieldTap(String text, [MaterialColor color = Colors.orange]){
    return Container(
      child: Text(
        "$text", 
        style: TextStyle(
          fontWeight: FontWeight.bold, 
          color: color, 
          decoration: TextDecoration.none, 
          fontSize: 25
        )
      ),
    );
  }

  Widget buildCell(int row, int col) {
    return Consumer<GameController>(
      builder: (context, gameBloc, child){
        return MaterialButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 35),
          onPressed: (){ 
            gameBloc.changeField(row, col);
            print("$row, $col");
          },
          child: _fieldTap(gameBloc.getValue(row, col)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCell(0, 0),
                  buildCell(0, 1),
                  buildCell(0, 2),
                ]
              )
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCell(1, 0),
                  buildCell(1, 1),
                  buildCell(1, 2),
                ]
              )
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildCell(2, 0),
                  buildCell(2, 1),
                  buildCell(2, 2),
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}