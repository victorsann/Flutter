import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:nubank/app/core/style/colors.dart';
import 'package:nubank/app/core/style/size.dart';
import 'package:nubank/app/module/home/pages/home/components/account_options.dart';
import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import 'package:shimmer/shimmer.dart';
   
class Account extends StatelessWidget {

  final HomePageController controller;
  const Account({
    Key? key,
    required this.controller,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return Observer(
    builder: (_) {
     return Column(
      children: [
       Padding(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
          (controller.loading)
          ? Shimmer.fromColors(
           child: Container(
             height: 22,
             width: 60,
             color: purple,
            ), 
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade200 
           )
          : Text('Conta',
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
           )
          ),
          Visibility(
            visible: (!controller.loading),
            child: InkWell(
             child: Icon(Icons.navigate_next),
           ),
          ),
         ],
        ),
       ),
       Padding(
        padding: EdgeInsets.only(left: 20, bottom: 10),
        child: Align(
         alignment: Alignment.centerLeft,
         child: (controller.loading)
          ? Shimmer.fromColors(
           child: Container(
             height: 29,
             width: 135,
             color: purple,
            ), 
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade200 
           )
          : Text('R\$ ${controller.currencyFormatter.format(controller.userData.balance)}',
          style: TextStyle(
           fontSize: 25,
           fontWeight: FontWeight.w500,
          )
         ),
        ),
       ),
       Container(
        height: height(context, .2),
        width: widthAll(context),
        padding: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 20),
         child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: controller.accountOptions.length,
          itemBuilder: (BuildContext context, index) {
            return Row(
             children: [
              AccountOptions(controller: controller, index: index),
              Visibility(
               visible: (controller.accountOptions[index] == controller.accountOptions.last),
               child: SizedBox(
               width: 20,
             ),
            )
           ],
          );
         },
        ),
       ),
       Column(
        children: [
         (controller.loading)
         ? Shimmer.fromColors(
           child: Container(
            height: 60,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
             color: lightGrey,
             borderRadius: BorderRadius.all(Radius.circular(15))
            ),
           ),
           baseColor: Colors.grey.shade300,
           highlightColor: Colors.grey.shade200
         )
         : Container(
          margin: EdgeInsets.only(left:  20, top: 20, right: 20, bottom: 20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
           color: lightGrey,
           borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Row(
           children: [
            Padding(
             padding: EdgeInsets.only(right: 20),
             child: Transform.rotate(angle: 55,
              child: Image(image: AssetImage('lib/assets/icons/credit-card.png'), height: 20, width: 20),
             )
            ),
            Text('Meus cartões',
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500
             ),
            )
           ],
          ),
         ),
         Visibility(
          visible: (!controller.loading),
          child: Container(
           height: height(context, .2) / 1.3,
           width: widthAll(context),
           child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
             Container(
              margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
               color: lightGrey,
               borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: ConstrainedBox(
               constraints: BoxConstraints(maxWidth: 260, maxHeight: 80),
               child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                 text: 'Você tem ',
                 style: TextStyle(
                   fontSize: 15,
                   color: Colors.black
                 ),
                 children: [
                   TextSpan(text: 'R\$ ${controller.currencyFormatter.format(controller.userData.loan)}', style: TextStyle(color: Color.fromRGBO(131, 10, 209, 1))),
                   TextSpan(text: ' dispobíveis para empréstimo!'),
                 ],
                ),
               ),
              ),
             ),
             Container(
              margin: EdgeInsets.only(top: 0, right: 20, bottom: 20),
              padding: EdgeInsets.only(left:  20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
               color: lightGrey,
               borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: ConstrainedBox(
               constraints: BoxConstraints(maxWidth: 269, maxHeight: 80),
               child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                 text: 'Salve seus amigos da burocracia.\n',
                 style: TextStyle(
                   fontSize: 15,
                   color: Colors.black
                 ),
                 children: [
                   TextSpan(text: 'Faça um convite para o Nubank', style: TextStyle(color: Color.fromRGBO(131, 10, 209, 1))),
                 ],
                ),
               ),
              ),
             )
            ],
           ),
          ),
         )
        ]
       )
      ],
     );
    });
  }
}
