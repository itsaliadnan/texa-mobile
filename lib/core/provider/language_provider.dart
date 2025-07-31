import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';

class LanguageController extends StateNotifier<AppLocale> {
  final Ref ref;
  LanguageController(this.ref)
    : super(ref.read(localStorageProvider).getLocale);

  void setLocale(AppLocale locale) {
    state = locale;
    ref.read(localStorageProvider).setLocale(locale.languageCode);
  }
}

final languageControllerProvider =
    StateNotifierProvider<LanguageController, AppLocale>((ref) {
      return LanguageController(ref);
    });
