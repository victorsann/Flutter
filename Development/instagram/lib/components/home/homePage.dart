import 'package:flutter/material.dart';
import 'package:instagram/components/home/appBottom.dart';
import 'package:instagram/constants/colorPallet.dart';
import 'package:instagram/model/posts.dart';
import 'package:instagram/model/story.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instagram'), actions: [
        IconButton(
          icon: const Icon(Icons.add_circle_outline_sharp),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.message_outlined),
          onPressed: () {},
        )
      ]),
      body: ListView(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(color: DarkTheme),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; story.length > i; i++)
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                    // child: Image.network(
                    //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
                  )
              ],
            ),
          ),
          for (var i = 0; posts.length > i; i++)
            LimitedBox(
              maxHeight: 700,
              maxWidth: 200,
              child: Container(
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(color: DarkTheme),
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFe0f2f1)),
                          ),
                          Text(
                            'Nome',
                            style: TextStyle(color: LightTheme),
                          )
                        ],
                      ),
                    ),
                    // Image.network(
                    //     'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
                  ],
                ),
              ),
            )
        ],
      ),
      bottomNavigationBar: AppBottom(),
    );
  }
}
