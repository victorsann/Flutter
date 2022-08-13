import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_bloc/app/modules/home/pages/account_settings/account_settings_page.dart';

import 'pages/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute, 
      child: (context, args) => HomePage(),
    ),
    ChildRoute(
      '/account-settings', 
      transition: TransitionType.noTransition,
      child: (context, args) => AccountSettingsPage(),
    ),
  ];
}