import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider_simple.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hola Mundo';
}
