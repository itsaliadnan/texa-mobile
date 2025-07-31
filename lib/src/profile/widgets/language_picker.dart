import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/language_provider.dart';
import 'package:texa1_app/src/shared/widgets/radio_list_tile_widget.dart';

class LanguagePicker extends HookConsumerWidget {
  const LanguagePicker({super.key});

  void _showLanguageBottomSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Text(
              context.t.profile.language,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTileWidget<AppLocale>(
              groupValue: LocaleSettings.currentLocale,
              value: AppLocale.ar,
              onChanged: (AppLocale? locale) {
                ref
                    .read(languageControllerProvider.notifier)
                    .setLocale(AppLocale.ar);
              },
              title: Text(context.t.profile.arabic),
            ),
            RadioListTileWidget<AppLocale>(
              groupValue: LocaleSettings.currentLocale,
              value: AppLocale.en,
              onChanged: (AppLocale? locale) {
                ref
                    .read(languageControllerProvider.notifier)
                    .setLocale(AppLocale.en);
              },
              title: Text(context.t.profile.english),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, ref) {
    return ListTile(
      onTap: () async {
        _showLanguageBottomSheet(context, ref);
      },
      title: Text(context.t.profile.language),
      leading: Icon(Icons.language, color: context.colorScheme.primary),
    );
  }
}
