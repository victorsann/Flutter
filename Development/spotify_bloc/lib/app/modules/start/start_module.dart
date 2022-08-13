import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_bloc/app/modules/start/pages/login/login_page.dart';
import 'package:spotify_bloc/app/modules/start/pages/signin/signin_page.dart';
import 'package:spotify_bloc/app/modules/start/pages/start/start_page.dart';

class StartModule extends Module {
    @override
    final List<Bind> binds = [];
 
    @override
    final List<ModularRoute> routes = [
      ChildRoute(
        Modular.initialRoute, 
        child: (context, args) => StartPage(),
      ),
      ChildRoute(
        '/signin', 
        child: (context, args) => SigninPage(),
      ),
      ChildRoute(
        '/login', 
        transition: TransitionType.rightToLeft,
        child: (context, args) => LoginPage(),
      )
    ];
 
}