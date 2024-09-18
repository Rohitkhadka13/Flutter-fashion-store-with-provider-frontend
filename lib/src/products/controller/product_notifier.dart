import 'package:flutter/cupertino.dart';
import 'package:stylesage/src/products/models/products_model.dart';

class ProductNotifier with ChangeNotifier{
  Products? product;
  void setProduct(Products p){
    product = p;
    notifyListeners();
  }

   bool _description = false;
  bool get description=> _description;
  void setdescription(){
    _description =! _description;
    notifyListeners();
  }
  void resetdescription(){
    _description = false;
  }

}