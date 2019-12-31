import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class ValueBloc extends BlocBase {
  StreamController<double> _valueController = StreamController.broadcast();
  double value = 0.0;

  //outputs
  Stream<double> get valueOut => _valueController.stream;
  Stream<String> get valueStringOut => _valueController.stream.map((v) => "Valor: ${v.toStringAsPrecision(1)}");

  onChangeValue(double v) {
    value = v;
    _valueController.add(value);
  }

  @override
  void dispose() {
    _valueController.close();
    super.dispose();
  }
}

//fim da regra de negócio

class _HomePageState extends State<HomePage> {

  Widget _textValue(String v) {
    return Text(
      v,
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("reconstruindo");

    ValueBloc valueBloc = BlocProvider.getBloc<ValueBloc>();

    return Material(
      color: Color.lerp(Colors.red, Colors.purple, valueBloc.value),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          StreamBuilder<String>(
            stream: valueBloc.valueStringOut,
            initialData: "Valor: ${valueBloc.value.toString()}",
            builder: (BuildContext context, snapshot) {
              return _textValue(snapshot.data);
            },
          ),
          Container(height: 25,),
          StreamBuilder<double>(
            stream: valueBloc.valueOut,
            initialData: 0,
            builder: (context, snapshot) {
              return Slider(
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                min: 0.0,
                max: 1.0,
                onChanged: valueBloc.onChangeValue,
                value: snapshot.data,
              );
            },
          ),
        ],
      )
    );
  }
}