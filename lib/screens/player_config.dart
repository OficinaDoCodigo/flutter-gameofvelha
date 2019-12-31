import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'game_screen/game_controller.dart';

class PlayerConfig extends StatefulWidget {
  @override
  _PlayerConfigState createState() => _PlayerConfigState();
}

AssetImage getImageCover(int key){
  var imagesForKeys = {
    '0': AssetImage('assets/icon.png'),
    '1': AssetImage('assets/iconeloiro.png'),
    '2': AssetImage('assets/icon_dart.png'),
  };

  return imagesForKeys['$key'];
}

class _PlayerConfigState extends State<PlayerConfig> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( 
        child: SingleChildScrollView(
          child: Consumer<GameController>(
            builder: (context, gameBloc, child){
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(height: 30,),
                  Text(
                    "Player 1", 
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Image(
                      image: getImageCover(gameBloc.getCoverTrue()),
                      width: 180,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  print('Tap');
                                  gameBloc.changeCover(0);
                                },
                                child: Image(image: AssetImage('assets/icon.png'), width: 90.0),
                              ),
                              Image(image: AssetImage('assets/icon_selected.png'), width: gameBloc.getCover(0) ? 98.0 : 0),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  print('Tap');
                                  gameBloc.changeCover(1);
                                },
                                child: Image(image: AssetImage('assets/iconeloiro.png'), width: 90.0),
                              ),
                              Image(image: AssetImage('assets/icon_selected.png'), width: gameBloc.getCover(1) ? 98.0 : 0),
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  print('Tap');
                                  gameBloc.changeCover(2);
                                },
                                child: Image(image: AssetImage('assets/icon_dart.png'), width: 90.0),
                              ),
                              Image(image: AssetImage('assets/icon_selected.png'), width: gameBloc.getCover(2) ? 98 : 0),
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nome de guerra",
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      //keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  )
                ],
              );
            }
          )
        )
      )
    );
  }
}