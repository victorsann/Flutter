import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_bloc/app/core/ui/style/colors.dart';
import 'package:spotify_bloc/app/core/ui/style/sizes.dart';
    
class StartPage extends StatefulWidget {

  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _startScope(),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget _startScope() {
    return SizedBox(
      height: fillHeight(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _icon(),
          _options(),
        ],
      ),
    );
  }

  Widget _icon() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              height: 40,
              image: AssetImage(
               'assets/images/spotify_logo_white.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Milhões de músicas à sua escolha. \n Grátis no Spotify',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w700
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _options() {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () => Modular.to.pushNamed('./signin'), 
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: green,
                minimumSize: Size(fillWidth(context), height(context, .07)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: Text(
                'Inscreva-se grátis',
                style: TextStyle(  
                  color: darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: OutlinedButton(
              onPressed: () {}, 
              style: OutlinedButton.styleFrom(
                elevation: 0,
                primary: green,
                minimumSize: Size(fillWidth(context), height(context, .07)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: BorderSide(
                  width: 1, 
                  color: grey, 
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.smartphone_rounded,
                        color: white,
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Continuar com um número\n de telefone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: OutlinedButton(
              onPressed: () {}, 
              style: OutlinedButton.styleFrom(
                elevation: 0,
                primary: green,
                minimumSize: Size(fillWidth(context), height(context, .07)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: BorderSide(
                  width: 1, 
                  color: grey, 
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image(
                        height: 25,
                        image: AssetImage(
                         'assets/icons/google_icon.png',
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text('Continuar com o Google',
                      style: TextStyle(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: OutlinedButton(
              onPressed: () {}, 
              style: OutlinedButton.styleFrom(
                elevation: 0,
                primary: green,
                minimumSize: Size(fillWidth(context), height(context, .07)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: BorderSide(
                  width: 1, 
                  color: grey, 
                  style: BorderStyle.solid,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image(
                        height: 25,
                        image: AssetImage('assets/icons/facebook_icon.png'),
                      ),
                    ),
                  ),
                  Text('Continuar com o Facebook',
                    style: TextStyle(
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ),

          TextButton(  
            onPressed: () => Modular.to.pushNamed('./login'),
            child: Text('Entrar',
              style: TextStyle(  
                color: white,
                fontSize: 17,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
        ],
      ),
    );
  }

}