import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/05_future_provider/future_provider.dart';

class FamilyFutureScreen extends ConsumerStatefulWidget {
  const FamilyFutureScreen({super.key});

  @override
  FamilyFutureScreenState createState() => FamilyFutureScreenState();
}

class FamilyFutureScreenState extends ConsumerState<FamilyFutureScreen> {
  int pokemonId = 3;
  @override
  Widget build(BuildContext context) {
    final pokemonFamily = ref.watch(pokemonProvider(pokemonId));

    return Scaffold(
        appBar: AppBar(
          title: Text('Pokemon id :$pokemonId'),
        ),
        body:  Center(
          child: pokemonFamily.when(
              data: (data) => Text(data),
              error: (error,stackTrace) => Text('$error'),
              loading: ()=> const CircularProgressIndicator()),
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            child: const Icon(Icons.minimize_outlined),
            onPressed: () {
              if (pokemonId <= 1) return;
              pokemonId--;
              setState(() {});
            },
          ),
          const SizedBox(height: 10, width: 10),
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              pokemonId++;
              setState(() {});
            },
          ),
        ]));
  }
}
