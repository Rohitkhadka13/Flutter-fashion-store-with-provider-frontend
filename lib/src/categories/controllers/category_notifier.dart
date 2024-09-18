import 'package:flutter/cupertino.dart';

class CategoryNotifier with ChangeNotifier{
  int _id = 0;
  int get id => _id;

  String category ="";
  void setCategory(String c, int id){

    category = c;
    _id = id;
    notifyListeners();
  }


}