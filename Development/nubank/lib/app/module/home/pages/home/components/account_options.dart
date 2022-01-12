import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/app/core/style/colors.dart';

import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import 'package:shimmer/shimmer.dart';
   
class AccountOptions extends StatelessWidget {
   
  final HomePageController controller;
  final int index;
  const AccountOptions({
    Key? key,
    required this.controller,
    required this.index,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Observer(
     builder: (_) {
      return Container(
       margin: EdgeInsets.only(left: 12),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         (controller.loading)
         ? Shimmer.fromColors(
           child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
             color: lightGrey,
             shape: BoxShape.circle
            ),
            child: SizedBox(  
              height: 32, width: 32,
            ),
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade200 
         )
         : InkWell(
          onTap: () {
    
          },
          child: Container(
           padding: EdgeInsets.all(20),
           decoration: BoxDecoration(
            color: lightGrey,
            shape: BoxShape.circle
           ),
           child: Image(image: AssetImage('${controller.accountOptions[index].path}'), height: 32, width: 32),
          ),
         ),
         (controller.loading)
         ? Shimmer.fromColors(
           child: Container(
            height: 22,
            width: 55,
            color: purple,
            margin: EdgeInsets.only(top: 10),
           ), 
           baseColor: Colors.grey.shade300,
           highlightColor: Colors.grey.shade200 
          )
         : Padding(
          padding: EdgeInsets.only(top: 10),
          child: ConstrainedBox(
           constraints: BoxConstraints(maxWidth: 100, maxHeight: 100),
            child: AutoSizeText(
             '${controller.accountOptions[index].title}',
             maxFontSize: 15,
             minFontSize: 14,
             maxLines: 2,
             textAlign: TextAlign.center,
             style: TextStyle(
              fontWeight: FontWeight.w500
            ),
           ),
          ),
         ),
        ],
       ),
      );
     } 
    );
  }
}
