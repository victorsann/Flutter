import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:provider_app/src/app_widget.dart';
import 'package:provider_app/src/providers/product_list_provider.dart';

void main() {
  runApp(
   ChangeNotifierProvider(
      create: (context) => ProductListProvider(),
      child: const AppWidget()
    ),
  );
}

