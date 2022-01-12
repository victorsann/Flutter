import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/app/core/style/colors.dart';

import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import 'package:shimmer/shimmer.dart';
   
class Invoice extends StatelessWidget {
  
  final HomePageController controller;

  const Invoice({
    Key? key,
    required this.controller,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Observer(
     builder: (_) {
      return Container(
       padding: EdgeInsets.all(20),
       decoration: BoxDecoration(
        border: Border(
         top: BorderSide(color: Color(0xFF555555), width: 0.3),
         bottom: BorderSide(color: Color(0xFF555555), width: 0.3))
       ),
       child: (controller.loading)
       ? Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Shimmer.fromColors(
            child: Container( 
              height: 28,
              width: 28, 
              decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: lightGrey
             ),
            ),
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade200
           ),
           Shimmer.fromColors(
            child: Container( 
              height: 30,
              width: 180,
              margin: EdgeInsets.only(top: 40, bottom: 60),
              decoration: BoxDecoration(
               color: lightGrey
             ),
            ),
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade200
           ),
         ],
       )
       : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Transform.rotate(angle: 55,
           child: Image(image: AssetImage('lib/assets/icons/credit-card.png'), height: 22, width: 22),
          ),
         ),
         Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
            Text('Cartão de crédito',
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
             )
            ),
            InkWell(
             onTap: () {},
             child: Icon(Icons.navigate_next),
            )
           ],
          ),
         ),
         Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Text('Fatura atual',
           style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade600
           )
          ),
         ),
         Padding(
          padding: EdgeInsets.only(bottom: 18),
          child: Text('R\$ ${controller.currencyFormatter.format(controller.userData.invoice)}',
           style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
           )
          ),
         ),
         RichText(
          text: TextSpan(
           text: 'Limite disponível de ',
           style: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(text: 'R\$ ${controller.currencyFormatter.format(controller.userData.limit)}', style: TextStyle(fontWeight: FontWeight.w700)),
          ],
         ),
        ),
       ],
      ),
     );
    });
  }
}
