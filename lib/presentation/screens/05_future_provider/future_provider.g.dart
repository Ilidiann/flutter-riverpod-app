// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'future_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pokemonNameHash() => r'8876a6b971f65c6bcfdd4170680e32d28ef1eb7a';

/// See also [pokemonName].
@ProviderFor(pokemonName)
final pokemonNameProvider = AutoDisposeFutureProvider<String>.internal(
  pokemonName,
  name: r'pokemonNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef PokemonNameRef = AutoDisposeFutureProviderRef<String>;
String _$pokemonHash() => r'405ddbf7c08184a91852ce1bfe28752e3fc5aaaf';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemon].
@ProviderFor(pokemon)
const pokemonProvider = PokemonFamily();

/// See also [pokemon].
class PokemonFamily extends Family<AsyncValue<String>> {
  /// See also [pokemon].
  const PokemonFamily();

  /// See also [pokemon].
  PokemonProvider call(
    int pokemonId,
  ) {
    return PokemonProvider(
      pokemonId,
    );
  }

  @override
  PokemonProvider getProviderOverride(
    covariant PokemonProvider provider,
  ) {
    return call(
      provider.pokemonId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonProvider';
}

/// See also [pokemon].
class PokemonProvider extends AutoDisposeFutureProvider<String> {
  /// See also [pokemon].
  PokemonProvider(
    int pokemonId,
  ) : this._internal(
          (ref) => pokemon(
            ref as PokemonRef,
            pokemonId,
          ),
          from: pokemonProvider,
          name: r'pokemonProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonHash,
          dependencies: PokemonFamily._dependencies,
          allTransitiveDependencies: PokemonFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  Override overrideWith(
    FutureOr<String> Function(PokemonRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonProvider._internal(
        (ref) => create(ref as PokemonRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _PokemonProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PokemonRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonProviderElement extends AutoDisposeFutureProviderElement<String>
    with PokemonRef {
  _PokemonProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonProvider).pokemonId;
}

String _$pokemonIdHash() => r'177c2d9ab33e26f9487e753133dae06529224368';

/// See also [pokemonId].
@ProviderFor(pokemonId)
final pokemonIdProvider = AutoDisposeNotifierProvider<pokemonId, int>.internal(
  pokemonId.new,
  name: r'pokemonIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$pokemonId = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
