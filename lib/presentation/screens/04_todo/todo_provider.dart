import 'dart:collection';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

part 'todo_provider.g.dart';

const uuid = Uuid();

enum ItachiFilterType { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  ItachiFilterType build() {
    return ItachiFilterType.all;
  }

  void changeCurrentFilter(ItachiFilterType newFilter) {
    state = newFilter;
  }
}

@Riverpod(keepAlive: true)
class ListaInvitados extends _$ListaInvitados {
  @override
  List<Todo> build() {
    return [
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: DateTime.now()),
      Todo(
          id: uuid.v4(),
          description: RandomGenerator.getRandomName(),
          completedAt: null),
    ];
  }

  void addInvitado(String descriptionReq) {
    state = [
      ...state,
      Todo(id: uuid.v4(), description: descriptionReq, completedAt: null)
    ];
  }

  void toggleTodo(String id) {
    state = state.map((nuevaLista) {
      if (nuevaLista.id == id) {
        nuevaLista = nuevaLista.copyWith(
            completedAt: nuevaLista.done ? null : DateTime.now());
      }

      return nuevaLista;
    }).toList();
  }
}

@riverpod
List<Todo> filtrador(FiltradorRef ref) {
  final selectedFilter = ref.watch(todoCurrentFilterProvider);
  final listaInvitadosAll = ref.watch(listaInvitadosProvider);

  switch (selectedFilter) {
    case ItachiFilterType.all:
      return listaInvitadosAll;

    case ItachiFilterType.completed:
      return listaInvitadosAll.where((element) => element.done).toList();

    case ItachiFilterType.pending:
    return listaInvitadosAll.where((element) => !element.done).toList();
  }


}
