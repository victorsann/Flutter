import 'package:flutter/material.dart';
import 'package:spotify_bloc/app/core/ui/style/colors.dart';

class SigninPage extends StatefulWidget {

  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        backgroundColor: black,
        body: Container(),
      ),
    );
  }
}