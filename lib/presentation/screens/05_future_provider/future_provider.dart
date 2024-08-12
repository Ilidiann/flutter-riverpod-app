import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
part 'future_provider.g.dart';

@riverpod
FutureOr<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);

  ref.onDispose(() {
    print('El provider se eliminado de forma correcta');
  });
  ref.keepAlive();
  return pokemonName;
}

@riverpod
class pokemonId extends _$pokemonId {
  @override
  int build() {
    return 1;
  }

  void nextPokemon() {
    state++;
  }

  void prevPokemon() {
    state--;
  }
}


//! En RIverpod sin codificar

@riverpod
Future<String> pokemon(PokemonRef ref, int pokemonId) async{
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  ref.keepAlive();
  return pokemonName ;
}