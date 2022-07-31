import 'package:flutter_modular/flutter_modular.dart';

import '../../modules/home/pages/home/home_controller.dart';
import 'package:location/app/modules/home/pages/home/home_page.dart';

import 'package:location/app/modules/home/pages/locations/locations_controller.dart';
import 'package:location/app/modules/home/pages/locations/locations_page.dart';


class HomeModule extends Module {
    @override
    final List<Bind> binds = [
      Bind.lazySingleton((i) => HomeController()),
      Bind.lazySingleton((i) => LocationsController()),
    ];
 
    @override
    final List<ModularRoute> routes = [
      ChildRoute('/', child: (_, args) => HomePage(controller: Modular.get())),
      ChildRoute('/locations', child: (_, args) => LocationsPage(controller: Modular.get())),
    ];
 
}