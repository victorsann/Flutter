
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import 'package:nubank/app/module/home/pages/home/home_page.dart';
import 'package:nubank/app/module/start/start_controller.dart';
import 'package:nubank/app/module/start/start_page.dart';

class AppModule extends Module {

  @override 
  List<Bind> get binds => [
     Bind.lazySingleton((i) => StartController()),
     Bind.lazySingleton((i) => HomePageController())

  ];

  @override 
  List<ModularRoute> get routes => [
     ChildRoute('/', child: (_, args) => StartScreen()),
     ChildRoute('/home', child: (_, args) => HomePage())
  ];
}