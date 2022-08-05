import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  
   @observable
   int amount = 0;

   @action 
   void increment() {
     ++amount;
   }

}

