import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/presentation/screens/07_stream_provider/stream_provider.dart';

class StreamProviderScreen extends StatelessWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
      ),
      body: const StreamView(),
    );
  }
}

class StreamView extends ConsumerWidget {
  const StreamView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usuariosChatActivos = ref.watch(usuariosChatProvider);

    if (usuariosChatActivos.isLoading) {
      return const CircularProgressIndicator();
    }
    
    if (usuariosChatActivos.hasError) {
      return Center(
        child: Text('${usuariosChatActivos.error}'),
      );
    }

    final usuariosListos = usuariosChatActivos.value!;

    return ListView.builder(
      itemCount: usuariosListos.length,
      itemBuilder: (BuildContext context, int index) {
        final user = usuariosListos[index];

        return  ListTile(
          title: Text(user),
        );
      },
    );
  }
}
