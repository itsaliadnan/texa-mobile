import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/models/transactions_model.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TransactionDetailsDialog extends StatelessWidget {
  const TransactionDetailsDialog({
    super.key,
    required this.isLoading,
    required this.transaction,
  });

  final ValueNotifier<bool> isLoading;
  final TransactionsModel transaction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        isLoading.value = true;
        await Future.delayed(const Duration(seconds: 2));
        isLoading.value = false;
        if (context.mounted) {
          context.push('/invoice', extra: transaction);
        }
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),

        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: context.colorScheme.primary),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.t.transaction_details.extra_info,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text(context.t.transaction_details.id)),
                Row(
                  children: [
                    const Icon(Icons.confirmation_number_outlined, size: 18),
                    const SizedBox(width: 6),
                    Text(context.t.transaction_details.transaction_id),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(child: Text(transaction.description)),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 18),
                    SizedBox(width: 6),
                    Text(context.t.transaction_details.date),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
