import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/app/core/style/colors.dart';
import 'package:nubank/app/core/style/size.dart';

class StartScreen extends StatefulWidget {

  @override
  _StartScreenState createState() => _StartScreenState();

}

class _StartScreenState extends State<StartScreen> {

  @override
  Widget build(BuildContext context) {
   return Scaffold( 
    body: SingleChildScrollView(
     child: Container( 
      height: heightAll(context), 
      color: darkPurple,
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
      child: InkWell(
       onTap: () {
         Modular.to.navigate('/home');
       },
       child: Container(
        height: height(context, .1) / 1.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Text('Entrar',
         style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
         ),
        ),
       ),
      ),
     ),
    ),
   );
  }

}

