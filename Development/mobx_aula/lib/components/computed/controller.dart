import 'package:mobx/mobx.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  Controller() {}

  @observable
  String email = '';

  @observable
  String senha = '';

  @action
  void setEmail(valor) => email = valor;

  @action
  void setSenha(valor) => senha = valor;

  @observable
  bool usuarioLogado = false;

  @observable
  bool carregando = false;

  @action
  Future<void> logar() async {
    carregando = true;
    await Future.delayed(Duration(seconds: 3));
    carregando = false;
    usuarioLogado = true;
  }

  @computed
  bool get formularioValidado => email.length >= 5 && senha.length >= 5;
}
