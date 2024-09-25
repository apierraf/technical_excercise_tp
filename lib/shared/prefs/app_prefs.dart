import 'package:shared_preferences/shared_preferences.dart';

class AppPrefs {
  final SharedPreferences _preferences;

  static AppPrefs? _instance;

  factory AppPrefs() {
    assert(_instance != null, 'AppPreferences has not been initialized.');
    return _instance!;
  }

  AppPrefs._(this._preferences);

  static Future<void> init() async {
    final preferences = await SharedPreferences.getInstance();
    _instance = AppPrefs._(preferences);
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }
}
