import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/models/transactions_model.dart';
import 'package:texa1_app/src/shared/widgets/transactions_details_widgets.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TransactionDetailsPage extends HookWidget {
  final TransactionsModel transaction;

  const TransactionDetailsPage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLoading = ValueNotifier<bool>(false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.t.transaction_details.title,
          style: TextStyle(color: colors.primary),
        ),
        backgroundColor: colors.onPrimary,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                color: colors.primary.withValues(alpha: 0.05),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    context.t.transaction_details.transfer_amount,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: context.colorScheme.primary,
                      ),
                      SizedBox(width: 6),
                      Text(
                        context.t.transaction_details.transfer_status,
                        style: TextStyle(
                          color: context.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.t.transaction_details.to,
                      style: TextStyle(fontSize: 12),
                    ),

                    Text(
                      transaction.projectName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        'lib/assets/icons/procces_stages.svg',
                        colorFilter: ColorFilter.mode(
                          colors.primary,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      context.t.transaction_details.from,
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      context.t.transaction_details.sender,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 24),

            TransactionDetailsDialog(
              isLoading: isLoading,
              transaction: transaction,
            ),
          ],
        ),
      ),
    );
  }
}
