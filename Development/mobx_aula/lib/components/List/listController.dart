import 'package:mobx/mobx.dart';

part 'listController.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store {
  @observable
  late String newItem = '';

  @action
  void setNewItem(String value) => newItem = value;

  ObservableList<String> itemList = ObservableList();

  @action
  void addItem() {
    itemList.add(newItem);
  }
}
