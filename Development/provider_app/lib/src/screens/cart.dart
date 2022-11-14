import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/product_list_provider.dart';    
import '../models/product.dart';    

class Cart extends StatefulWidget {
  
  const Cart({ Key? key }) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  
  List<Product> selected = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Consumer<ProductListProvider>(
        builder: (context, productListProvider, child) {
          return (productListProvider.productList.isEmpty) 
           ? const Center(
             child: Text(
               'Seu carrinho está vazio', 
               style: TextStyle(
                 color: Colors.grey,
                 fontWeight: FontWeight.w500,
               ),
             ),
           ) 
          : ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 20),
            itemCount: productListProvider.productList.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  if(selected.contains(productListProvider.productList[index])) {
                    setState(() {
                     selected.remove(productListProvider.productList[index]);
                    });
                  } else {
                    setState(() {
                      selected.add(productListProvider.productList[index]);
                    });
                  }
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/${productListProvider.productList[index].img}')
                ),
                title: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(  
                          maxWidth: 230,
                        ),
                        child: Text(
                          productListProvider.productList[index].name,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      if (selected.contains(productListProvider.productList[index])) IconButton(
                        onPressed: () {
                          productListProvider.remove(productListProvider.productList[index]);
                        },
                        icon: const Icon(Icons.delete)
                      ),
                    ],
                  ),
                ),
                selected: selected.contains(productListProvider.productList[index]),
              );
            },
          );
        },
      ),
    );
  }
}