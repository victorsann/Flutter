import 'package:flutter/cupertino.dart';

class Product extends ChangeNotifier {
  
  String name;
  String img;

  Product({
    required this.name,
    required this.img,
});

}
