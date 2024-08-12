import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
part 'stream_provider.g.dart';

@riverpod
Stream<List<String>> usuariosChat(UsuariosChatRef ref) async* {
  final names = <String>[];
  //gatillador de velocidad yield
  // yield names;

  ///vas a llamar al provedor de Nombres y los vas almacenas en `name`
  await for (final name in RandomGenerator.randomNameStream()) {
    /// una vez almacenado los vas adicionar a la variable `names`
    names.add(name);

    yield names;
  }
}
