import 'package:mobx/mobx.dart';
import 'package:mobx_aula/components/List/item/itemController.dart';

part 'listController.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  @observable
  late String newItem = '';

  @action
  void setNewItem(String value) => newItem = value;

  ObservableList<ItemController> itemList = ObservableList<ItemController>();

  @action
  void addItem() {
    itemList.add(ItemController(newItem));
  }
}
