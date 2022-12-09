class RawConfig {
  final Map<String, String> _config;

  RawConfig.from(this._config);

  String? operator [](String key) => _config[key];
}
