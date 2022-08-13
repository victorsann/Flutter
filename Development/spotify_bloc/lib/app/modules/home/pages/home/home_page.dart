import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:spotify_bloc/app/core/ui/style/colors.dart';
import 'package:spotify_bloc/app/core/ui/style/sizes.dart';

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  final bool userIsAuthenticated = true;

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _homePageScope(),
        bottomNavigationBar: Container(
          color: green,
          height: height(context, .08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width(context, .1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.home_filled,
                      size: 30,
                    ),
                    Text('data'),
                  ],
                ),
              ),
              SizedBox(
                width: width(context, .1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    Text('data'),
                  ],
                ),
              ),
              SizedBox(
                width: width(context, .1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.home_filled,
                      size: 30,
                    ),
                    Text('data'),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

  Widget _homePageScope() {
    return SingleChildScrollView(
      child: DecoratedBox(
        decoration: BoxDecoration(  
          color: black,
        ),
        child: Column(   
          children: [
            Container(
              height: height(context, .09),
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(  
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Boa Noite',
                      style: TextStyle(  
                        color: white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {}, 
                            child: Icon(
                              Icons.notifications_none,
                              color: white,
                              size: 30,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {}, 
                            child: Icon(
                              Icons.access_time,
                              color: white,
                              size: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Modular.to.pushNamed('/account-settings'),
                          child: Icon(
                            Icons.settings_outlined,
                            color: white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}