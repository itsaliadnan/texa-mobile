import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(ref),
);

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  final Ref ref;
  ThemeModeNotifier(this.ref)
    : super(ref.read(localStorageProvider).getThemeMode());

  void setThemeMode(ThemeMode themeMode) {
    state = themeMode;
    ref.read(localStorageProvider).setThemeMode(state);
  }
}
