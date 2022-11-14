import 'package:mobx/mobx.dart';

class HomeController {

  var number = Observable(0);
  late Action increment;

  HomeController() {
    increment = Action(_increment);
  }

  _increment() {
    number.value++;
  }

}
