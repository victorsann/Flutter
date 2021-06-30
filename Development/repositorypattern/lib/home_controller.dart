import 'package:repositorypattern/repositories/poke_repository.dart';
import 'package:repositorypattern/repositories/poke_repository_interface.dart';

import 'package:repositorypattern/models/poke_model.dart';

import 'package:dio/dio.dart';

class HomeController {
  final IPokeRepository _pokeRepository = PokeRepository(Dio());

  Future<List<PokeModel>> fetchPokemons() {
    return _pokeRepository.getAllPokemons();
  }
}
