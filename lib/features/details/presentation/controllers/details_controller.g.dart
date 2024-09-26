// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchDetailsControllerHash() =>
    r'bf9dad95d23820de00b7d09ca13eb45272119e32';

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

/// See also [fetchDetailsController].
@ProviderFor(fetchDetailsController)
const fetchDetailsControllerProvider = FetchDetailsControllerFamily();

/// See also [fetchDetailsController].
class FetchDetailsControllerFamily extends Family<AsyncValue<MovieDetails?>> {
  /// See also [fetchDetailsController].
  const FetchDetailsControllerFamily();

  /// See also [fetchDetailsController].
  FetchDetailsControllerProvider call(
    int movieId,
  ) {
    return FetchDetailsControllerProvider(
      movieId,
    );
  }

  @override
  FetchDetailsControllerProvider getProviderOverride(
    covariant FetchDetailsControllerProvider provider,
  ) {
    return call(
      provider.movieId,
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
  String? get name => r'fetchDetailsControllerProvider';
}

/// See also [fetchDetailsController].
class FetchDetailsControllerProvider
    extends AutoDisposeFutureProvider<MovieDetails?> {
  /// See also [fetchDetailsController].
  FetchDetailsControllerProvider(
    int movieId,
  ) : this._internal(
          (ref) => fetchDetailsController(
            ref as FetchDetailsControllerRef,
            movieId,
          ),
          from: fetchDetailsControllerProvider,
          name: r'fetchDetailsControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailsControllerHash,
          dependencies: FetchDetailsControllerFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailsControllerFamily._allTransitiveDependencies,
          movieId: movieId,
        );

  FetchDetailsControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.movieId,
  }) : super.internal();

  final int movieId;

  @override
  Override overrideWith(
    FutureOr<MovieDetails?> Function(FetchDetailsControllerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailsControllerProvider._internal(
        (ref) => create(ref as FetchDetailsControllerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        movieId: movieId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MovieDetails?> createElement() {
    return _FetchDetailsControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailsControllerProvider && other.movieId == movieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, movieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchDetailsControllerRef on AutoDisposeFutureProviderRef<MovieDetails?> {
  /// The parameter `movieId` of this provider.
  int get movieId;
}

class _FetchDetailsControllerProviderElement
    extends AutoDisposeFutureProviderElement<MovieDetails?>
    with FetchDetailsControllerRef {
  _FetchDetailsControllerProviderElement(super.provider);

  @override
  int get movieId => (origin as FetchDetailsControllerProvider).movieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
