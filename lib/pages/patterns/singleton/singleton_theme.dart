class SingletonTheme {
  SingletonTheme._();

  static SingletonTheme? _instance;

  static SingletonTheme getInstance() {
    _instance ??= SingletonTheme._();
    return _instance!;
  }

  bool isDarkMode = true;
}
