import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ObservableList extends StatefulWidget {
  @override
  _ObservableList createState() => _ObservableList();
}

class _ObservableList extends State<ObservableList> {
  _dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar item"),
            content: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Digite uma descrição..."),
              onChanged: (valor) {},
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {}, child: Text("Salvar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, indice) {
          return ListTile(
            title: Text("Item $indice"),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
