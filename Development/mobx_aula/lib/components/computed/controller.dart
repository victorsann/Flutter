import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  Controller() {
    autorun((_) {
      print(email);
      print(senha);
    });
  }

  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(valor) => email = valor;

  @action
  void setSenha(valor) => senha = valor;

  @computed
  bool get formularioValidado => email.length >= 5 && senha.length >= 5;
}
