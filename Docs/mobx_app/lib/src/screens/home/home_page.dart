import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import './home_controller.dart';

class HomePage extends StatelessWidget {
  
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final controller = HomeController();

    return Scaffold(
      appBar: AppBar(title: const Text('HomePage'),),
      body: Observer(
        builder: (_) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "You've pushed this amount of timer:",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '${controller.number.value}',
                  style: const TextStyle(
                    fontSize: 45,
                    color: Colors.black
                  ),
                ),
              ],
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(  
        onPressed: () => controller.increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
