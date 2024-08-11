
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'state_providers.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 5;
  }

  void increment() {
    state++;
  }
}

//Dark Mode Provider default :false

@riverpod
class DarkMode extends _$DarkMode {
  @override
  bool build() {
    return false;
  }

  void toggleDarkMode() {
    state = !state;
  }
}
//Para eliminar el audispose cambiar el Riverpod a mayuscula
@Riverpod(keepAlive: true)
class RandonName extends _$RandonName {
  @override
  String build() {
    return 'Muchachito Loco';
  }

  void changeName(String name) {
    state =name ;
  }
}
