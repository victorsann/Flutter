import 'package:flutter/material.dart';

import './locations_controller.dart';

class LocationsPage extends StatelessWidget {
  
  final LocationsController controller;
  
  const LocationsPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(),
    );
  }
}
