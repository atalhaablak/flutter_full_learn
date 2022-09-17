import 'package:flutter_full_learn/202/cache/shared_not_initilaze.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKeys { counter }

class SharedManager {
  SharedPreferences? prefs;

  SharedManager();

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (prefs == null) throw SharedInitilazeException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    await prefs?.setString(key.name, value);
  } // kaydet

  String? getString(SharedKeys key) {
    _checkPreferences();
    return prefs?.getString(key.name);
  } // çağır

  Future<bool?> removeItem(SharedKeys key) async {
    _checkPreferences();
    return (await prefs?.remove(key.name)) ?? false;
  } // kaldır
}
