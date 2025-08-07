import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/models/transactions_model.dart';
import 'package:texa1_app/src/shared/widgets/transactions_details_widgets.dart';
import 'package:texa1_app/translation/translations.g.dart';

class InvoicePage extends StatelessWidget {
  final TransactionsModel transaction;

  const InvoicePage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = Theme.of(context).colorScheme;
    final isLoading = ValueNotifier<bool>(false);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text(t.transaction_details.title)),
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
                      '${transaction.amount} د.ع',
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
                        const SizedBox(width: 6),
                        Text(
                          'تم بنجاح',
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

              const SizedBox(height: 24),

              TransactionDetailsDialog(
                isLoading: isLoading,
                transaction: transaction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
