import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferences = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

enum BaseSharePreferenceKey {
  isFirstTime,
}

extension _BaseSharePreferenceKeyStr on BaseSharePreferenceKey {
  String get sharedPrefsKey {
    switch (this) {
      case BaseSharePreferenceKey.isFirstTime:
        return 'IS_FIRST_TIME';
      default:
        assert(false);
    }

    return '';
  }
}

// Inject sharedPrefs provider to BaseSharedPreference
final baseSharePreferenceProvider = Provider<BaseSharedPreference>((ref) {
  final pref = ref.watch(sharedPreferences);

  return BaseSharedPreference(pref);
});

class BaseSharedPreference {
  final SharedPreferences? _preferences;

  BaseSharedPreference(this._preferences);

  bool? getBool(BaseSharePreferenceKey sharedPreferenceKey) =>
      _preferences?.getBool(sharedPreferenceKey.sharedPrefsKey);

  int? getInt(BaseSharePreferenceKey sharedPreferenceKey) => _preferences?.getInt(sharedPreferenceKey.sharedPrefsKey);

  double? getDouble(BaseSharePreferenceKey sharedPreferenceKey) =>
      _preferences?.getDouble(sharedPreferenceKey.sharedPrefsKey);

  String? getString(BaseSharePreferenceKey sharedPreferenceKey) =>
      _preferences?.getString(sharedPreferenceKey.sharedPrefsKey);

  Future<bool>? setBool(
    BaseSharePreferenceKey sharedPreferenceKey,
    bool value,
  ) =>
      _preferences?.setBool(sharedPreferenceKey.sharedPrefsKey, value);

  Future<bool>? setInt(BaseSharePreferenceKey sharedPreferenceKey, int value) =>
      _preferences?.setInt(sharedPreferenceKey.sharedPrefsKey, value);

  Future<bool>? setDouble(
    BaseSharePreferenceKey sharedPreferenceKey,
    double value,
  ) =>
      _preferences?.setDouble(sharedPreferenceKey.sharedPrefsKey, value);

  Future<bool>? setString(
    BaseSharePreferenceKey sharedPreferenceKey,
    String value,
  ) =>
      _preferences?.setString(sharedPreferenceKey.sharedPrefsKey, value);

  Future<bool>? remove(BaseSharePreferenceKey sharedPreferenceKey) =>
      _preferences?.remove(sharedPreferenceKey.sharedPrefsKey);

  Future<bool>? clear() => _preferences?.clear();
}
