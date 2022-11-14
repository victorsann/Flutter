// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:bloc_app/app/bloc/viaCep/bloc/events.dart';
import 'package:bloc_app/app/bloc/viaCep/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'package:bloc_app/app/bloc/viaCep/via_cep_controller.dart';
    
class ViaCepPage extends StatefulWidget {
  const ViaCepPage({Key? key}) : super(key: key);

  @override
  ViaCepPageState createState() => ViaCepPageState();
}

final searchCepBloc = ViaCepController();
final controller = TextEditingController();

StreamController streamController = StreamController();

class ViaCepPageState extends State<ViaCepPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cep Search'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                label: Text('CEP'),
                border: OutlineInputBorder()
              ),
            ),
           SizedBox(height: 20),
           ElevatedButton(  
             onPressed: () => searchCepBloc.add(SeachEvent(controller.text)),
             child: Text('Pesquisar'),
           ),
           SizedBox(height: 20),
           BlocBuilder<ViaCepController, SearchCepStates>(
             bloc: searchCepBloc,
             builder: (context, state) {
               if(state is Loading) {
                 return Expanded(
                   child: Center(
                     child: CircularProgressIndicator()
                   ),
                 );
               } else if(state is Error) {
                 return Text(state.error);
               } else if(state is Success) {
                return Expanded(
                   child: SizedBox(
                     width: MediaQuery.of(context).size.width,
                     child: Text(
                       ' cep: ${state.address['cep']},\n logradouro: ${state.address['logradouro']},\n complemento: ${state.address['complemento']},\n bairro: ${state.address['bairro']},\n localidade: ${state.address['localidade']},\n uf: ${state.address['uf']},\n ibge: ${state.address['ibge']},\n gia: ${state.address['gia']},\n ddd: ${state.address['ddd']},\n siafi: ${state.address['siafi']} ',
                       style: TextStyle(  
                         fontSize: 18
                        ),
                      ),
                    ),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}