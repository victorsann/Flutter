import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_aula/components/List/listController.dart';

class List extends StatefulWidget {
  @override
  _List createState() => _List();
}

ListController _listController = ListController();

class _List extends State<List> {
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
              onChanged: _listController.setNewItem,
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
              TextButton(
                  onPressed: () {
                    _listController.addItem();
                    Navigator.pop(context);
                  },
                  child: Text("Salvar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ObservableList'),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _listController.itemList.length,
            itemBuilder: (_, indice) {
              var item = _listController.itemList[indice];
              return Observer(builder: (_) {
                return ListTile(
                  title: Text(item.titulo,
                      style: TextStyle(
                          decoration:
                              item.marked ? TextDecoration.lineThrough : null)),
                  onTap: () {
                    item.marked = !item.marked;
                  },
                );
              });
            },
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
