import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/router/app_router.dart';
import 'package:texa1_app/core/provider/language_provider.dart';
import 'package:texa1_app/core/provider/theme_mode_provider.dart';
import 'package:texa1_app/core/theme/app_colors.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TexaApp extends ConsumerWidget {
  const TexaApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    LocaleSettings.setLocale(
      ref.watch(languageControllerProvider).languageCode == 'ar'
          ? AppLocale.ar
          : AppLocale.en,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: ref.watch(languageControllerProvider).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ref.watch(themeModeProvider),

      routerConfig: ref.watch(routerProvider),
    );
  }
}
