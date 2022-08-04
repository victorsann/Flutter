import 'package:flutter_modular/flutter_modular.dart';
import 'package:rxdart/rxdart.dart';

class HomeController extends Disposable {

  var controller = BehaviorSubject.seeded(0);

  HomeController() {
    counterStream = controller.stream;
  }

  late Stream<int> counterStream;

  void increment() {
    controller.add(++controller.value);
  }

  @override
  void dispose() {
    controller.close();
  }
}