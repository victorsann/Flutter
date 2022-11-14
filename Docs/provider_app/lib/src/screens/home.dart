import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/catalog_provider.dart';
import '../providers/product_list_provider.dart';

import '../models/product.dart';
    
class Home extends StatefulWidget {

  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
      
  final catalog = CatalogProvider.products;

  List<Product> selected = [];

  @override
  Widget build(BuildContext context) {

    late ProductListProvider productListProvider;
    productListProvider = Provider.of<ProductListProvider>(context);
    // productListProvider = context.watch<ProductListProvider>();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider app'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart'), 
            icon: const Icon(Icons.shopping_cart)
          ),
        ],
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: catalog.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 20),
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              if (selected.contains(catalog[index])) {
                setState(() {
                  selected.remove(catalog[index]);                
                });
              } else {
                setState(() {
                  selected.add(catalog[index]);                
                });
              }
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/${catalog[index].img}')
            ),
            title: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(  
                      maxWidth: 240,
                    ),
                    child: Text(
                      catalog[index].name,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  if(selected.contains(catalog[index])) const Icon(Icons.check)
                ],
              ),
            ),
            selected: selected.contains(catalog[index]),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Visibility(
        visible: (selected.isNotEmpty),
        child: FloatingActionButton.extended(
          onPressed: () { 
            productListProvider.addAll(selected); 
            selected = [];
          },
          label: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Adicionar ao carrinho'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.add),
            ],
          ),
        ),
      ),
    );
  }
}