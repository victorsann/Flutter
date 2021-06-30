import 'package:repositorypattern/models/poke_model.dart';

abstract class IPokeRepository {
  Future<List<PokeModel>> getAllPokemons();
}
