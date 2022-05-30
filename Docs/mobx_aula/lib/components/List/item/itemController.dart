import 'package:mobx/mobx.dart';

part 'itemController.g.dart';

class ItemController = ItemControllerBase with _$ItemController;

abstract class ItemControllerBase with Store {
  ItemControllerBase(this.titulo);

  final String titulo;

  @observable
  bool marked = false;
}
