import 'package:flutter/material.dart';
import 'package:repositorypattern/home_controller.dart';
import 'package:repositorypattern/models/poke_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final HomeController _homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lista de Pokemons')),
        body: FutureBuilder<List<PokeModel>>(
          future: _homeController.fetchPokemons(),
          builder: (context, snapshot) {
            var pokemons = snapshot.data;
            if (pokemons == null) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
                itemCount: pokemons.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(pokemons[index].name),
                  );
                });
          },
        ));
  }
}
