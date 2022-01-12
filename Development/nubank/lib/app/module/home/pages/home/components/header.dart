import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/style/size.dart';
import '../../../../../core/style/colors.dart';

import 'package:nubank/app/module/home/pages/home/home_controller.dart';
   
class Header extends StatelessWidget {
  
  final HomePageController controller;  
  
  const Header({
    Key? key,
    required this.controller,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Observer(
     builder: (_) {
      return Container(
       color: darkPurple,
       height: height(context, .2) / 1.1,
       padding: EdgeInsets.only(top:  height(context, .1) / 2 /7),
       child: Column(
        children: [
         Container(
          child: Row(
           children: [
            Expanded(
             child: (controller.loading)
             ? Shimmer.fromColors(
               child: Container( 
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.bottomLeft,
                child: Container(  
                 padding: EdgeInsets.all(15),
                 decoration: BoxDecoration(
                   color: purple,
                   shape: BoxShape.circle,
                 ),
                 child: Image(image: AssetImage('lib/assets/icons/user.png'), height: 22, width: 22),
                ),
               ),
               baseColor: Colors.white.withOpacity(0.2),
               highlightColor: purple
             )
             : Container( 
              // color: Colors.blue,
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.bottomLeft,
              child: Container(  
               padding: EdgeInsets.all(15),
               decoration: BoxDecoration(
                 color: purple,
                 shape: BoxShape.circle,
               ),
               child: Image(image: AssetImage('lib/assets/icons/user.png'), height: 22, width: 22),
              ),
             ),
            ),
          Expanded(
           child: Visibility(
            visible: !controller.loading,
            child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               InkWell(
                onTap: () {},
                child: Image(image: AssetImage('lib/assets/icons/question.png'), height: 20, width: 20),
               ),
               InkWell(
                onTap: () {},
                child: Image(image: AssetImage('lib/assets/icons/question.png'), height: 20, width: 20),
               ),
               InkWell(
                onTap: () {},
                child: Image(image: AssetImage('lib/assets/icons/add-message.png'), height: 20, width: 20),
              ),
             ],
            ),
           ),
          )
         ],
        ),
       ),
       Expanded(
        child: Container(
        // color: Colors.orange,
         alignment: Alignment.centerLeft,
         child: Padding( 
          padding: EdgeInsets.only(left: 20), 
          child: (controller.loading)
           ? FractionallySizedBox(
              heightFactor: 0.3,
              widthFactor: 0.6,
              child: Shimmer.fromColors(
                child: Container(
                  color: purple,
                ), 
                baseColor: Colors.white.withOpacity(0.2),
                highlightColor: purple, 
              ),
            )
           : Text('Olá, ${controller.userData.name}',
           style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.w500,
             color: Colors.white,
           ),
          ),
         ),
        ),
       )
      ],
     ),
    );
   });
  }
}
