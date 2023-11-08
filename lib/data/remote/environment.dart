class Environments {
  static const String PRODUCTION = 'http://panti.suitdev.com/api';
  static const String DEV = 'http://panti.suitdev.com/api';
}

class ConfigEnvironments {
  static String _currentEnvironments = Environments.DEV;

  static setEnvironment(String value) => _currentEnvironments = value;

  static const List<Map<String, String>> _availableEnvironments = [
    {
      'env': Environments.DEV,
      'url': 'http://panti.suitdev.com/',
    },
    {
      'env': Environments.PRODUCTION,
      'url': 'http://panti.suitdev.com/',
    },
  ];

  static String? getEnvironments() {
    return _availableEnvironments
        .firstWhere(
          (d) => d['env'] == _currentEnvironments,
        )
        .values
        .last
        .toString();
  }
}
