import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/app/core/style/colors.dart';
import 'package:nubank/app/core/style/size.dart';
import 'package:nubank/app/module/home/pages/home/home_controller.dart';
import 'package:shimmer/shimmer.dart';
    
class More extends StatelessWidget {

  final HomePageController controller; 

  const More({ Key? key, required this.controller }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
       return Container(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          Padding(
           padding: EdgeInsets.only(left: 20, bottom: 25),
           child: (controller.loading)
           ? Shimmer.fromColors(
            child: Container( 
              height: 22,
              width: 120, 
              decoration: BoxDecoration(
               color: lightGrey
             ),
            ),
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade200
           )
           : Text('Descubra mais',
            style: TextStyle(
             fontSize: 18,
             fontWeight: FontWeight.w500,
            )
           ),
          ),
          Container(
           height: height(context, .3) / 1.2,
           width: widthAll(context),
           child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
            (controller.loading)
            ? Shimmer.fromColors(
              child: Container(
               height: 300,
               width: 270,
               margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
               decoration: BoxDecoration(
                 color: lightGrey,
                 borderRadius: BorderRadius.all(Radius.circular(15))
               ),
              ),
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade200
            )
            : Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
               color: lightGrey,
               borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Padding(
                   padding: EdgeInsets.only(bottom: 10),
                   child: Text('Indique seus amigos',
                    style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                    )
                   ),
                  ),
                  ConstrainedBox(
                   constraints: BoxConstraints(maxWidth: 230, maxHeight: 80),
                   child: Text('Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
                    textAlign: TextAlign.start,
                   ),
                  )
                 ],
                ),
                Container(
                 padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                 margin: EdgeInsets.only(bottom: 20),
                 decoration: BoxDecoration(  
                  color: darkPurple, 
                  borderRadius: BorderRadius.all(Radius.circular(20))
                 ),
                 child: Text('Indicar amigos',
                  style: TextStyle(
                   fontSize: 16,
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                  )
                 ),
                )
               ],
              ),
             ),
             (controller.loading)
             ? Shimmer.fromColors(
              child: Container(
               height: 300,
               width: 270,
               margin: EdgeInsets.only(right: 20, bottom: 20),
               decoration: BoxDecoration(
                 color: lightGrey,
                 borderRadius: BorderRadius.all(Radius.circular(15))
               ),
              ),
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade200
             )
             : Container(
              margin: EdgeInsets.only(right: 20, bottom: 20),
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
               color: lightGrey,
               borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Padding(
                   padding: EdgeInsets.only(bottom: 10),
                   child: Text('WhatsApp',
                    style: TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w500,
                    )
                   ),
                  ),
                  ConstrainedBox(
                   constraints: BoxConstraints(maxWidth: 230, maxHeight: 80),
                   child: Text('Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.',
                    textAlign: TextAlign.start,
                   ),
                  ),
                 ],
                ),
                Container(
                 padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                 margin: EdgeInsets.only(bottom: 20),
                 decoration: BoxDecoration(  
                  color: darkPurple, 
                  borderRadius: BorderRadius.all(Radius.circular(20))
                 ),
                 child: Text('Quero conhecer',
                  style: TextStyle(
                   fontSize: 16,
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                  ),
                 ),
                ),
               ],
              ),
             ),
            ],
           ),
          )
         ],  
        ),
       );
     });
  }
}