import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_aula/components/home/controller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Controller controller = Controller();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    reaction((_) => controller.counter, (valor) {
      print(valor);
    });
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
                child: Observer(
                  builder: (_) {
                    return Text(
                      '${controller.counter}',
                      style: TextStyle(color: Colors.black, fontSize: 80),
                    );
                  },
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Text('Incrementar'),
                )),
          ],
        ),
      ),
    );
  }
}
