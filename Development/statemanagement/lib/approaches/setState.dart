import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<SetState> {
  int _favorite = 0;
  int _cash = 0;
  int _grade = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 300,
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          color: Colors.pink,
                          onPressed: () {
                            setState(() {
                              _favorite++;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            size: 40.0,
                          )),
                      Text(
                        '$_favorite',
                        style: TextStyle(color: Colors.pink),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          color: Colors.green,
                          onPressed: () {
                            setState(() {
                              _cash++;
                            });
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 40.0,
                          )),
                      Text(
                        '$_cash',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          color: Colors.yellow,
                          onPressed: () {
                            setState(() {
                              _grade++;
                            });
                          },
                          icon: Icon(
                            Icons.grade,
                            size: 40.0,
                          )),
                      Text(
                        '$_grade',
                        style: TextStyle(color: Colors.yellow),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
