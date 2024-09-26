// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_controllers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getGenresControllerHash() =>
    r'6280d256a7fa590da68a450117749f574f8aa34f';

/// See also [getGenresController].
@ProviderFor(getGenresController)
final getGenresControllerProvider =
    AutoDisposeFutureProvider<List<Genre>>.internal(
  getGenresController,
  name: r'getGenresControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getGenresControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetGenresControllerRef = AutoDisposeFutureProviderRef<List<Genre>>;
String _$selectedIdsHash() => r'106d4fc1f3db27020f29909e7450d1aa9125bb48';

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

/// See also [selectedIds].
@ProviderFor(selectedIds)
const selectedIdsProvider = SelectedIdsFamily();

/// See also [selectedIds].
class SelectedIdsFamily extends Family<List<int>> {
  /// See also [selectedIds].
  const SelectedIdsFamily();

  /// See also [selectedIds].
  SelectedIdsProvider call(
    List<Genre> genres,
  ) {
    return SelectedIdsProvider(
      genres,
    );
  }

  @override
  SelectedIdsProvider getProviderOverride(
    covariant SelectedIdsProvider provider,
  ) {
    return call(
      provider.genres,
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
  String? get name => r'selectedIdsProvider';
}

/// See also [selectedIds].
class SelectedIdsProvider extends AutoDisposeProvider<List<int>> {
  /// See also [selectedIds].
  SelectedIdsProvider(
    List<Genre> genres,
  ) : this._internal(
          (ref) => selectedIds(
            ref as SelectedIdsRef,
            genres,
          ),
          from: selectedIdsProvider,
          name: r'selectedIdsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$selectedIdsHash,
          dependencies: SelectedIdsFamily._dependencies,
          allTransitiveDependencies:
              SelectedIdsFamily._allTransitiveDependencies,
          genres: genres,
        );

  SelectedIdsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genres,
  }) : super.internal();

  final List<Genre> genres;

  @override
  Override overrideWith(
    List<int> Function(SelectedIdsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SelectedIdsProvider._internal(
        (ref) => create(ref as SelectedIdsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genres: genres,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<int>> createElement() {
    return _SelectedIdsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SelectedIdsProvider && other.genres == genres;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genres.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SelectedIdsRef on AutoDisposeProviderRef<List<int>> {
  /// The parameter `genres` of this provider.
  List<Genre> get genres;
}

class _SelectedIdsProviderElement extends AutoDisposeProviderElement<List<int>>
    with SelectedIdsRef {
  _SelectedIdsProviderElement(super.provider);

  @override
  List<Genre> get genres => (origin as SelectedIdsProvider).genres;
}

String _$genreControllerHash() => r'89d71299cd112cc1554a944a6572661884ff3354';

abstract class _$GenreController
    extends BuildlessAutoDisposeNotifier<List<Genre>> {
  late final List<Genre> genres;

  List<Genre> build(
    List<Genre> genres,
  );
}

/// See also [GenreController].
@ProviderFor(GenreController)
const genreControllerProvider = GenreControllerFamily();

/// See also [GenreController].
class GenreControllerFamily extends Family<List<Genre>> {
  /// See also [GenreController].
  const GenreControllerFamily();

  /// See also [GenreController].
  GenreControllerProvider call(
    List<Genre> genres,
  ) {
    return GenreControllerProvider(
      genres,
    );
  }

  @override
  GenreControllerProvider getProviderOverride(
    covariant GenreControllerProvider provider,
  ) {
    return call(
      provider.genres,
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
  String? get name => r'genreControllerProvider';
}

/// See also [GenreController].
class GenreControllerProvider
    extends AutoDisposeNotifierProviderImpl<GenreController, List<Genre>> {
  /// See also [GenreController].
  GenreControllerProvider(
    List<Genre> genres,
  ) : this._internal(
          () => GenreController()..genres = genres,
          from: genreControllerProvider,
          name: r'genreControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$genreControllerHash,
          dependencies: GenreControllerFamily._dependencies,
          allTransitiveDependencies:
              GenreControllerFamily._allTransitiveDependencies,
          genres: genres,
        );

  GenreControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.genres,
  }) : super.internal();

  final List<Genre> genres;

  @override
  List<Genre> runNotifierBuild(
    covariant GenreController notifier,
  ) {
    return notifier.build(
      genres,
    );
  }

  @override
  Override overrideWith(GenreController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GenreControllerProvider._internal(
        () => create()..genres = genres,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        genres: genres,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<GenreController, List<Genre>>
      createElement() {
    return _GenreControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GenreControllerProvider && other.genres == genres;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, genres.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GenreControllerRef on AutoDisposeNotifierProviderRef<List<Genre>> {
  /// The parameter `genres` of this provider.
  List<Genre> get genres;
}

class _GenreControllerProviderElement
    extends AutoDisposeNotifierProviderElement<GenreController, List<Genre>>
    with GenreControllerRef {
  _GenreControllerProviderElement(super.provider);

  @override
  List<Genre> get genres => (origin as GenreControllerProvider).genres;
}

String _$pagesControllerHash() => r'abcc023e1dece360bd11b25a2b146350966c1f16';

/// See also [PagesController].
@ProviderFor(PagesController)
final pagesControllerProvider = NotifierProvider<PagesController, int>.internal(
  PagesController.new,
  name: r'pagesControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pagesControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PagesController = Notifier<int>;
String _$moviesControllersHash() => r'35313f600908e100092363bab0299d8bc4909689';

/// See also [MoviesControllers].
@ProviderFor(MoviesControllers)
final moviesControllersProvider =
    AutoDisposeAsyncNotifierProvider<MoviesControllers, List<Result>>.internal(
  MoviesControllers.new,
  name: r'moviesControllersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$moviesControllersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MoviesControllers = AutoDisposeAsyncNotifier<List<Result>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
