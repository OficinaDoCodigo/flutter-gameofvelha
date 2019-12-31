import 'package:flutter/foundation.dart';

class GameController extends ChangeNotifier {
  var _valueFields = {};
  var _currentValue = '';

  var _covers = {'1': true};

  void changeField(int row, int col){
    if(_valueFields['$row$col'] == null){
      _currentValue = _currentValue == 'x' ? 'o' : 'x';
      _valueFields['$row$col'] = _currentValue;
      notifyListeners();
    }
  }

  void changeCover(int pos){
     _covers.clear();
     _covers['$pos'] = true;
     print(_covers['$pos']);
     notifyListeners();
  }

  bool getCover(int pos){
    if(_covers['$pos'] != null){
      return _covers['$pos'];
    }
    return false;
  }

  int getCoverTrue(){
    return int.parse(_covers.keys.elementAt(0));
  }

  String getValue(int row, int col) =>
    _valueFields['$row$col'] == null ? '' : _valueFields['$row$col'];
}