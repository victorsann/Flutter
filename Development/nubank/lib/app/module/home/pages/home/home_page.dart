
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/app/module/home/pages/home/components/account.dart';
import 'package:nubank/app/module/home/pages/home/components/header.dart';
import 'package:nubank/app/module/home/pages/home/components/invoice.dart';
import 'package:nubank/app/module/home/pages/home/components/life_insurance.dart';
import 'package:nubank/app/module/home/pages/home/components/loan.dart';
import 'package:nubank/app/module/home/pages/home/components/more.dart';
import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import '../../../../core/style/colors.dart';

class HomePage extends StatefulWidget {

  @override
   _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomePageController> {
  final HomePageController store = Modular.get();

  @override
  void initState() {
    super.initState();
    controller.init();
  }

  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: darkPurple,
      statusBarBrightness: Brightness.light
   ));
   return Scaffold(
    body: SafeArea(  
      child: _escopoHomePage(),
    ),
   );
  }

 Widget _escopoHomePage() {
  return  _homePage();
 }

 Widget _homePage() {
  return  ListView(
   physics: BouncingScrollPhysics(),
   children: [
    // header
     Header(controller: controller),
    // account
     Account(controller: controller),
    // creditCard
     Invoice(controller: controller),
    // loan
     Loan(controller: controller),
    // lifeInsurance
     LifeInsurance(controller: controller),
    // more
     More(controller: controller)
   ],
  );
 }

}