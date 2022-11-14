import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductListProvider extends ChangeNotifier {

  final List<Product> _productList = [];
  
  UnmodifiableListView<Product> get productList => UnmodifiableListView(_productList);
  
  addAll(List<Product> products) {
    for (var product in products) {
      if(!_productList.contains(product)) _productList.add(product); 
    }
    notifyListeners();
  }

  remove(Product product) {
    _productList.remove(product);
    notifyListeners();
  }

}

