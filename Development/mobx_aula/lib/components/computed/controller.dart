import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(valor) => email = valor;

  @action
  void setSenha(valor) => senha = valor;
}
