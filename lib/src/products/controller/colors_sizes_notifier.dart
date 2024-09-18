import 'package:flutter/cupertino.dart';

class ColorsSizesNotifier with ChangeNotifier{
  String _sizes = '';
  String get sizes => _sizes;

  void setSizes(String s){
    if(_sizes == s){
      _sizes = "";
    }else{
      _sizes = s;
    }
    notifyListeners();
  }


  String _color = '';
  String get color => _color;

  void setcolor(String c){
    if(_color == c){
      _color = "";
    }else{
      _color = c;
    }
    notifyListeners();
  }
}