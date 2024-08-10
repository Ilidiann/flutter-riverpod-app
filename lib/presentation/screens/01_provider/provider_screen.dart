import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/01_provider/provider_simple.dart';
import 'package:riverpod_app/presentation/screens/domain.dart';

class ProviderScreen extends ConsumerWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorld = ref.watch(helloWorldProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body:  Center(
        child: Text(helloWorld),
      ),
    );
  }
}
