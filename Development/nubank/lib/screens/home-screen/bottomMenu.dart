import 'package:flutter/material.dart';
import 'package:nubank/constants.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
      height: 130,
      padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
      decoration: BoxDecoration(color: NprimaryColor),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Pix', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Pagar', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.person_add_alt,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Indicar amigos',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.paid,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Transferir',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.paid,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child:
                      Text('Depositar', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Emprestimos',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.payment,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Cartão virtual',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.smartphone,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Recarga de celular',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Ajuste de limite',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.lock,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Bloquear cartão',
                      style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Cobrar', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.ac_unit,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('Doação', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          ),
          Container(
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: NsecondaryColor, borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Icon(
                    Icons.help_outline,
                    color: NternaryColor,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child:
                      Text('Me ajuda', style: TextStyle(color: NternaryColor)),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
