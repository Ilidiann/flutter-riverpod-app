import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/05_future_provider/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonName = ref.watch(pokemonNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future Provider'),
      ),
      body: Center(
          //*Forma de enviar un Future se debe configurar sus 3 estados
          child: pokemonName.when(
              data: (data) => Text(data),
              error: (error, stackTrace) => Text('$error'),
              loading: () => const CircularProgressIndicator())),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children :[ 
          FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            ref.read(pokemonIdProvider.notifier).nextPokemon();
            
          },
        ),
         const SizedBox(height: 10,width: 10),
           FloatingActionButton(
          child: const Icon(Icons.minimize_outlined),
          onPressed: () {
            ref.read(pokemonIdProvider.notifier).prevPokemon();
            
          },
        ),

        ]
      ),
    );
  }
}
