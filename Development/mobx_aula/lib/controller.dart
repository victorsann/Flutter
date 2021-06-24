import 'package:mobx/mobx.dart';

class Controller {
  var counter = Observable(0);

  late Action increment;

  Controller() {
    increment = Action(_increment);
  }

  _increment() => counter.value++;
}
