import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/notification_settings_provider.dart';
import 'package:texa1_app/translation/translations.g.dart';

class NotificationPicker extends HookConsumerWidget {
  const NotificationPicker({super.key});

  void _showNotificationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return HookConsumer(
          builder: (context, ref, _) {
            final settings = ref.watch(notificationSettingsProvider);
            final notifier = ref.read(notificationSettingsProvider.notifier);

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.t.profile.notification_settings.title,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),

                  SwitchListTile.adaptive(
                    value: settings.all,
                    onChanged: notifier.toggleAll,
                    title: Text(context.t.profile.notification_settings.all),
                  ),

                  SwitchListTile.adaptive(
                    value: settings.transfers,
                    onChanged: notifier.toggleTransfers,
                    title: Text(
                      context.t.profile.notification_settings.transfers_only,
                    ),
                  ),

                  SwitchListTile.adaptive(
                    value: settings.invoices,
                    onChanged: notifier.toggleInvoices,
                    title: Text(
                      context.t.profile.notification_settings.invoices_only,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      onTap: () => _showNotificationBottomSheet(context),
      title: Text(context.t.profile.notification_settings.notifications),
      leading: Icon(
        Icons.notifications_none,
        color: context.colorScheme.primary,
      ),
    );
  }
}
