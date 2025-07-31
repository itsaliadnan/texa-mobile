import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/theme_mode_provider.dart';
import 'package:texa1_app/src/shared/widgets/radio_list_tile_widget.dart';

class ThemeModePicker extends StatelessWidget {
  const ThemeModePicker({super.key});

  @override
  Widget build(BuildContext context) {
    void showThemeModeBottomSheet(BuildContext context) {
      showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (context) => const ThemeModeBottomSheet(),
      );
    }

    return ListTile(
      title: Text(context.t.profile.theme),
      leading: Icon(Icons.light_mode, color: context.colorScheme.primary),
      onTap: () {
        showThemeModeBottomSheet(context);
      },
    );
  }
}

class ThemeModeBottomSheet extends ConsumerWidget {
  const ThemeModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedThemeMode = ref.watch(themeModeProvider);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.t.profile.theme,
            style: context.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          RadioListTileWidget<ThemeMode>(
            groupValue: selectedThemeMode,
            value: ThemeMode.system,
            onChanged: (ThemeMode? locale) {
              ref
                  .read(themeModeProvider.notifier)
                  .setThemeMode(ThemeMode.system);
            },
            title: Text(context.t.profile.system),
            secondary: Icon(
              Icons.settings,
              // color: context.colorScheme.primary,
            ),
          ),
          RadioListTileWidget<ThemeMode>(
            groupValue: selectedThemeMode,
            value: ThemeMode.light,
            onChanged: (ThemeMode? locale) {
              ref
                  .read(themeModeProvider.notifier)
                  .setThemeMode(ThemeMode.light);
            },
            title: Text(context.t.profile.light_mode),
            secondary: Icon(Icons.light_mode, color: Colors.amber),
          ),
          RadioListTileWidget<ThemeMode>(
            groupValue: selectedThemeMode,
            value: ThemeMode.dark,
            onChanged: (ThemeMode? locale) {
              ref.read(themeModeProvider.notifier).setThemeMode(ThemeMode.dark);
            },
            title: Text(context.t.profile.dark_mode),
            secondary: Icon(Icons.dark_mode, color: Colors.indigo),
          ),
        ],
      ),
    );
  }
}
