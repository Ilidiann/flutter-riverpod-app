// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filtradorHash() => r'ea39306aa8f341e2f42eb16814d1ff53153a6dd4';

/// See also [filtrador].
@ProviderFor(filtrador)
final filtradorProvider = AutoDisposeProvider<List<Todo>>.internal(
  filtrador,
  name: r'filtradorProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$filtradorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FiltradorRef = AutoDisposeProviderRef<List<Todo>>;
String _$todoCurrentFilterHash() => r'9afb3c4429f6dc4a5b73dceffc6d97cbfa115529';

/// See also [TodoCurrentFilter].
@ProviderFor(TodoCurrentFilter)
final todoCurrentFilterProvider =
    NotifierProvider<TodoCurrentFilter, ItachiFilterType>.internal(
  TodoCurrentFilter.new,
  name: r'todoCurrentFilterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$todoCurrentFilterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TodoCurrentFilter = Notifier<ItachiFilterType>;
String _$listaInvitadosHash() => r'3acb81dbdbfeb78cd5393bb050dfa4f1f646ef11';

/// See also [ListaInvitados].
@ProviderFor(ListaInvitados)
final listaInvitadosProvider =
    NotifierProvider<ListaInvitados, List<Todo>>.internal(
  ListaInvitados.new,
  name: r'listaInvitadosProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$listaInvitadosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListaInvitados = Notifier<List<Todo>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
