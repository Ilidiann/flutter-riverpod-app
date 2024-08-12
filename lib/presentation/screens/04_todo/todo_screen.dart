import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/presentation/screens/04_todo/todo_provider.dart';

class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider + Providers'),
      ),
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref
              .read(listaInvitadosProvider.notifier)
              .addInvitado(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}

class _TodoView extends ConsumerWidget {
  const _TodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterState = ref.watch(todoCurrentFilterProvider);
    //final listaInvitados = ref.watch(listaInvitadosProvider);
    final listafiltradaInvitados = ref.watch(filtradorProvider);

    return Column(
      children: [
        const ListTile(
          title: Text('Listado de invitados'),
          subtitle: Text('Estas son las personas a invitar a la fiesta'),
        ),

        SegmentedButton(
          segments: const [
            ButtonSegment(value: ItachiFilterType.all, icon: Text('Todos')),
            ButtonSegment(
                value: ItachiFilterType.completed, icon: Text('Invitados')),
            ButtonSegment(
                value: ItachiFilterType.pending, icon: Text('No invitados')),
          ],
          selected: <ItachiFilterType>{filterState},
          onSelectionChanged: (value) {
            ref
                .read(todoCurrentFilterProvider.notifier)
                .changeCurrentFilter(value.first);
          },
        ),
        const SizedBox(height: 5),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: listafiltradaInvitados.length,
            itemBuilder: (context, index) {
              final listaIndexada = listafiltradaInvitados[index];
              return SwitchListTile(
                  title: Text(listaIndexada.description),
                  value: listaIndexada.done,
                  onChanged: (value) {
                    ref
                        .read(listaInvitadosProvider.notifier)
                        .toggleTodo(listaIndexada.id);
                  });
            },
          ),
        )
      ],
    );
  }
}
