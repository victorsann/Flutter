// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import './home_controller.dart';

class HomePage extends StatefulWidget {

  final HomeController controller;

  const HomePage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homePageScope(),
    );
  }

  Widget homePageScope() {
    return Stack(
      children: [
        map(),
      ],
    );
  }

  static final CameraPosition _kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414
  );

  Widget map() {
    return GoogleMap(
      mapType: MapType.hybrid,
      initialCameraPosition: _kLake,
    );
  }
}