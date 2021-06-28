import 'package:mobx/mobx.dart';

part 'itemController.g.dart';

class ItemController = ItemControllerBase with _$ItemController;

abstract class ItemControllerBase with Store {}
