import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_aula/components/computed/controller.dart';
import 'package:mobx_aula/components/List/List.dart';

class Computed extends StatefulWidget {
  @override
  _ComputedState createState() => _ComputedState();
}

class _ComputedState extends State<Computed> {
  Controller controller = Controller();

  late ReactionDisposer reactionDisposer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    reactionDisposer =
        reaction((_) => controller.usuarioLogado, (usuarioLogado) {
      if (controller.usuarioLogado) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => List()));
      }
    });
  }

  @override
  void dispose() {
    reactionDisposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(labelText: "Email"),
                onChanged: controller.setEmail,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(labelText: "Senha"),
                onChanged: controller.setSenha,
              ),
            ),
            Padding(
                padding: EdgeInsets.all(16),
                child: Observer(
                  builder: (_) {
                    return Text.rich(TextSpan(children: [
                      TextSpan(
                          text: controller.formularioValidado &&
                                  !controller.carregando
                              ? 'Campos Válidos'
                              : '',
                          style: TextStyle(color: Colors.green)),
                      TextSpan(
                          text: controller.formularioValidado
                              ? ''
                              : 'Campos Inválidos',
                          style: TextStyle(color: Colors.red))
                    ]));
                  },
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Observer(builder: (_) {
                  return ElevatedButton(
                      onPressed: controller.formularioValidado
                          ? () {
                              controller.logar();
                            }
                          : null,
                      child: controller.carregando
                          ? CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : Text('Login'));
                })),
          ],
        ),
      ),
    );
  }
}
