import 'package:flutter/material.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences sharedPreferences;

  LocalStorageService({required this.sharedPreferences});

  // ==================== Theme ====================
  void setThemeMode(ThemeMode themeMode) {
    sharedPreferences.setString(StorageKeys.themeMode, themeMode.name);
  }

  ThemeMode getThemeMode() {
    final result = sharedPreferences.getString(StorageKeys.themeMode);
    debugPrint('Theme from storage: $result');
    switch (result) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  // ==================== Locale ====================
  Future<void> setLocale(String languageCode) async {
    await sharedPreferences.setString(StorageKeys.locale, languageCode);
  }

  AppLocale get getLocale {
    final String languageCode =
        sharedPreferences.getString(StorageKeys.locale) ??
        StorageKeys.arabicLocale;
    return languageCode == StorageKeys.arabicLocale
        ? AppLocale.ar
        : AppLocale.en;
  }

  // ==================== Token ====================
  Future<void> saveToken(String token) async {
    await sharedPreferences.setString(StorageKeys.token, token);
    debugPrint('Token saved: $token');
  }

  String? getToken() {
    return sharedPreferences.getString(StorageKeys.token);
  }

  Future<void> clearToken() async {
    await sharedPreferences.remove(StorageKeys.token);
  }

  bool isLoggedIn() {
    return sharedPreferences.containsKey(StorageKeys.token);
  }
}

class StorageKeys {
  static const String locale = "locale";
  static const String arabicLocale = "ar";
  static const String themeMode = "themeMode";

  static const String token = "auth_token";
}

// import 'package:flutter/material.dart';
// import 'package:texa1_app/translation/translations.g.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class LocalStorageService {
//   final SharedPreferences sharedPreferences;

//   LocalStorageService({required this.sharedPreferences});

//   void setThemeMode(ThemeMode themeMode) {
//     sharedPreferences.setString(StorageKeys.themeMode, themeMode.name);
//   }

//   ThemeMode getThemeMode() {
//     final result = sharedPreferences.getString("themeMode");
//     debugPrint('Theme from storage: $result');
//     switch (result) {
//       case 'light':
//         return ThemeMode.light;
//       case 'dark':
//         return ThemeMode.dark;
//       case _:
//         return ThemeMode.system;
//     }
//   }

//   Future<void> setLocale(String languageCode) async {
//     await sharedPreferences.setString(StorageKeys.locale, languageCode);
//   }

//   AppLocale get getLocale {
//     final String languageCode =
//         sharedPreferences.getString(StorageKeys.locale) ??
//         StorageKeys.arabicLocale;
//     return languageCode == StorageKeys.arabicLocale
//         ? AppLocale.ar
//         : AppLocale.en;
//   }

//   // Role is now handled through the user model
// }

// class StorageKeys {
//   static const String locale = "locale";
//   static const String arabicLocale = "ar";
//   static const String themeMode = "themeMode";
// }
