import 'package:repositorypattern/repositories/poke_repository_interface.dart';
import 'package:repositorypattern/models/poke_model.dart';

import 'package:dio/dio.dart';

class PokeRepository implements IPokeRepository {
  final Dio _dio;

  PokeRepository(this._dio);

  @override
  Future<List<PokeModel>> getAllPokemons() async {
    List<PokeModel> pokemons = [];

    var response = await _dio.get("https://pokeapi.co/api/v2/pokemon/");

    response.data['results'].map((pokemon) {
      pokemons.add(PokeModel.fromJson(pokemon));
    }).toList();

    return pokemons;
  }
}
