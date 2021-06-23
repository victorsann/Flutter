import 'package:flutter/material.dart';
import 'package:statemanagement/approaches/setState.dart';

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
        Scaffold(
          appBar: AppBar(title: Text('SetState')),
          body: SetState(),
        ),
        Scaffold(
          appBar: AppBar(title: Text('SetState')),
        ),
        Scaffold(
          appBar: AppBar(title: Text('SetState')),
        ),
      ],
    );
  }
}
