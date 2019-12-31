import 'package:flutter/material.dart';
import 'package:game_of_velha/screens/player_config.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image(image: AssetImage('assets/icon.png'), width: 160.0),
                Text(
                  "Game Of Velha", 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.grey[600], 
                    decoration: TextDecoration.none, 
                    fontFamily: 'Got',
                    fontSize: 23,
                    wordSpacing: 3,
                    letterSpacing: 3
                  ),
                ),
              ]
            )
          ),          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 290,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute (builder: (context) => PlayerConfig()));
                  },
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "PLAY",
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ), 
                ),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.volume_up),
                  tooltip: 'Volume',
                  onPressed: (){
                    print("volume");
                  },
                )
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.info_outline),
                  tooltip: 'info',
                  onPressed: (){
                    print("info");
                  },
                )
              ),
              Container(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.delete),
                  tooltip: 'delete',
                  onPressed: (){
                    print("delete");
                  },
                )
              ),
            ],
          )
        ],
      )
    );
  }
}