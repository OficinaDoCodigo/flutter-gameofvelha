import 'package:flutter/material.dart';
//import 'package:game_of_velha/screens/home_page.dart';
import 'package:game_of_velha/screens/game_screen/game_controller.dart';
import 'package:provider/provider.dart';
import 'package:game_of_velha/screens/home.dart';
import 'package:game_of_velha/screens/player_config.dart';

void main() => runApp(
  ChangeNotifierProvider(
    builder: (context) => GameController(),
    child: MyApp(),
  )
);

Map <int, Color> color = { 
  50: Color.fromRGBO (136, 14, 79, .1), 
  100: Color.fromRGBO (136, 14, 79, .2), 
  200: Color.fromRGBO (136, 4 , 79, .3), 
  300: Color.fromRGBO (136, 14, 79, .4), 
  400: Color.fromRGBO (136, 14, 79, .5), 
  500: Color.fromRGBO (136, 14, 79 , .6), 
  600: Color.fromRGBO (136, 14, 79, .7), 
  700: Color.fromRGBO (136, 14, 79, .8), 
  800: Color.fromRGBO (136, 14, 79, .9), 
  900: Color.fromRGBO (136, 14, 79, 1), 
};

MaterialColor salmao = MaterialColor(0xFFE57373, color);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game of Velha',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: salmao,
        accentColor: Colors.cyan
      ),
      home: Scaffold(
        body: SafeArea(
          child: Home(),
        )
      )
    );
  }
}