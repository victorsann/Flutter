import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_bloc/app/core/ui/style/colors.dart';
import 'package:spotify_bloc/app/core/ui/style/sizes.dart';
    
class AccountSettingsPage extends StatefulWidget {

  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  AccountSettingsPageState createState() => AccountSettingsPageState();
}

class AccountSettingsPageState extends State<AccountSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: darkGrey,
          title: const Text(
            'Configurações',
            style: TextStyle(  
             color: white,
             fontWeight: FontWeight.w500,
             fontSize: 18
            ),
          ),
        ),
        body: _accountSettingsPage(),
      ),
    );
  }

  Widget _accountSettingsPage() {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: BoxDecoration(  
          color: black,
        ),
        child: SizedBox(
          width: fillWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 10
                ), 
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Flexible(
                        flex: 0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(  
                            radius: 27,
                            backgroundImage: AssetImage('assets/images/spotify_logo_white.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Victor Santos',
                                maxLines: 1,
                                style: TextStyle(  
                                  color: white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Ver perfil',
                                style: TextStyle(  
                                  color: grey,
                                  fontSize: 14
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(  
                            Icons.arrow_forward_ios,
                            color: white,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Modular.to.navigate('./start/'),
                child: SizedBox(
                  width: fillWidth(context),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 10
                    ),  
                    child: Column(  
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Sair',
                          style: TextStyle(  
                           color: white,
                           fontSize: 16
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Você entrou como',
                          style: TextStyle(  
                            color: grey,
                            fontSize: 13
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}