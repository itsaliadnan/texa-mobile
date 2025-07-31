import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/translation/translations.g.dart';
import '../../model/notification_model.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel item;

  const NotificationItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    late final String title;

    switch (item.type) {
      case NotificationType.transferSuccess:
        title = context.t.notifications.types.transfer_success.title;
        break;
      case NotificationType.newProject:
        title = context.t.notifications.types.new_project.title;
        break;
      case NotificationType.balanceUsage:
        title = context.t.notifications.types.balance_usage.title;
        break;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.primary.withAlpha(5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: colors.surface,
            child: Icon(item.icon, color: colors.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: colors.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '1000'.iqd,
                  style: TextStyle(fontSize: 14, color: colors.onSurface),
                ),
                const SizedBox(height: 6),
                Text(
                  item.date,
                  style: TextStyle(
                    fontSize: 12,
                    color: colors.onSurface.withAlpha(150),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
