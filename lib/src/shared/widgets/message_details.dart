import 'package:flutter/material.dart';
import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/extensions/enums_translation.dart';
import 'package:texa1_app/translation/translations.g.dart';

class MessageDetailsDialog extends StatelessWidget {
  const MessageDetailsDialog({super.key, required this.message});
  final MessageModel message;

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = context.colorScheme;

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.project_Messages_D.messageDetails,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Status
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  message.status == MessageStatus.sent
                      ? Icons.check_circle
                      : Icons.cancel,
                  color: message.status.color(context),
                ),

                const SizedBox(width: 8),
                Text(
                  message.status.translate(context),
                  style: TextStyle(
                    color: colors.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Date
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 18),
                const SizedBox(width: 100),
                Text(message.sentAt.toIso8601String()),
              ],
            ),
            const SizedBox(height: 16),

            // Content
            Text(
              t.message_dialog.message,
              style: TextStyle(color: colors.onSurface, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
