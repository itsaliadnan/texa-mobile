import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:texa1_app/core/data/service/local_storage_service.dart';

final sharedPreferencesProvider = FutureProvider(
  (ref) => SharedPreferences.getInstance(),
);

final localStorageProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService(
    sharedPreferences: ref.read(sharedPreferencesProvider).requireValue,
  );
});
