import 'package:counter_getx/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomePage(),
    )
  );
}

class HomePage extends StatelessWidget {

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('${controller.count}'))
      ),
      body: Center(  
        child: ElevatedButton(  
          onPressed: () => Get.to(() => Other()),
          child: const Text('Go to other'),
        ),
      ),
      floatingActionButton: FloatingActionButton(    
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Other extends StatelessWidget {

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        leading: IconButton(  
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(  
        child: Text('${controller.count}'),
      ),
    );
  }
}