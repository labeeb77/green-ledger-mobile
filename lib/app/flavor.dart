/// Build flavour: picked by the entry point (`main_<flavor>.dart`); the API base URL
/// comes from `--dart-define-from-file=env/<flavor>.json`.
enum Flavor { dev, staging, prod }

class FlavorConfig {
  const FlavorConfig({required this.flavor, required this.apiBaseUrl});

  /// Reads `API_BASE_URL` from the compile-time environment.
  factory FlavorConfig.fromEnvironment(Flavor flavor) {
    const url = String.fromEnvironment('API_BASE_URL');
    if (url.isEmpty) {
      throw StateError('API_BASE_URL is not set: run with --dart-define-from-file=env/${flavor.name}.json');
    }
    return FlavorConfig(flavor: flavor, apiBaseUrl: url);
  }

  final Flavor flavor;

  /// Server origin without the `/api/v1` prefix (the generated client adds it).
  final String apiBaseUrl;

  bool get isProd => flavor == Flavor.prod;
}
