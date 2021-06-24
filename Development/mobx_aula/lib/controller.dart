import 'package:mobx/mobx.dart';

class Controller = ControllerBase with _$Controller;

// O mixin Store é utilizado na geração do código

abstract class ControllerBase with Store {
  @observable
  int counter = 0;

  @action
  increment() {
    counter++;
  }
}
