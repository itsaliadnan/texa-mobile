import 'package:flutter/material.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/transactions/model/transaction.dart';
import 'package:texa1_app/translation/translations.g.dart';

class InvoicePage extends StatelessWidget {
  final Transaction transaction;

  const InvoicePage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final t = context.t;
    final colors = Theme.of(context).colorScheme;
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

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colorScheme.primary),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'معلومات إضافية',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('#421451'),
                        Row(
                          children: [
                            Icon(Icons.confirmation_number_outlined, size: 18),
                            SizedBox(width: 6),
                            Text('رمز المعاملة'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('كاش'),
                        Row(
                          children: [
                            Icon(Icons.credit_card, size: 18),
                            SizedBox(width: 6),
                            Text('طريقة الدفع'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(transaction.date),
                        Row(
                          children: const [
                            Icon(Icons.calendar_today, size: 18),
                            SizedBox(width: 6),
                            Text('التاريخ'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
