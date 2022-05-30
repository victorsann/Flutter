import 'package:flutter/material.dart';
import 'package:mobx_aula/components/home/home.dart';
import 'package:mobx_aula/components/computed/computed.dart';

class MyPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "My App", home: Scaffold(body: MyHomePage()));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Scaffold(appBar: AppBar(title: Text('Auto Run')), body: Home()),
        Scaffold(
          appBar: AppBar(title: Text('Computed Observables')),
          body: Computed(),
        ),
      ],
    );
  }
}
