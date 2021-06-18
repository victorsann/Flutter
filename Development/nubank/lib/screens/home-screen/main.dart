import 'package:flutter/material.dart';
import 'package:nubank/constants.dart';
import 'package:nubank/screens/home-screen/bottomMenu.dart';
import 'package:nubank/screens/models/user.dart';

class HomeScrren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            ' Olá, Victor',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              decoration: ShapeDecoration(
                  color: NsecondaryColor, shape: CircleBorder()),
              margin: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                  color: NsecondaryColor, shape: CircleBorder()),
              margin: EdgeInsets.only(right: 15),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            )
          ],
          backgroundColor: NprimaryColor,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                  color: NternaryColor, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.credit_card),
                        Text(
                          ' Cartão de Crédito ',
                          style: TextStyle(color: NgreyText, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      'Fatura atual',
                      style: TextStyle(color: NgreyText),
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      'R\$ ${user[0]['invoice']}',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 8),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Limite disponível',
                      ),
                      TextSpan(
                          text: '  R\$ ${user[0]['limit']}',
                          style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold))
                    ])),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                  color: NternaryColor, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.paid),
                        Text(
                          ' Conta ',
                          style: TextStyle(color: NgreyText, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      ' Saldo disponível ',
                      style: TextStyle(color: NgreyText),
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 15),
                    child: Text(
                      'R\$ ${user[0]['balance']}',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                  color: NternaryColor, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.paid),
                        Text(
                          ' Empréstimo ',
                          style: TextStyle(color: NgreyText, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 25),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' Valor disponível de até ',
                      ),
                      TextSpan(
                          text: ' R\$ ${user[0]['loan']}',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
                  ),
                  Container(
                    width: 400,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(top: 15),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'SIMULAR EMPRÉSTIMO',
                        style: TextStyle(color: NprimaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
              decoration: BoxDecoration(
                  color: NternaryColor, borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.paid),
                        Text(
                          ' Empréstimo ',
                          style: TextStyle(color: NgreyText, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 25),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' Valor disponível de até ',
                      ),
                      TextSpan(
                          text: ' R\$ ${user[0]['loan']}',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ])),
                  ),
                  Container(
                    width: 400,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(top: 15),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        'SIMULAR EMPRÉSTIMO',
                        style: TextStyle(color: NprimaryColor),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomMenu());
  }
}
