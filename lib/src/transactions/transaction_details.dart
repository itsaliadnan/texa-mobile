import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/transactions/model/transaction.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TransactionDetailsPage extends HookWidget {
  final Transaction transaction;

  const TransactionDetailsPage({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final isLoading = useState(false);
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

            GestureDetector(
              onTap: () async {
                isLoading.value = true;
                await Future.delayed(const Duration(seconds: 2));
                isLoading.value = false;
                if (context.mounted) {
                  context.push('/invoice', extra: transaction);
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colorScheme.primary),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      context.t.transaction_details.extra_info,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(context.t.transaction_details.id),
                        Row(
                          children: [
                            const Icon(
                              Icons.confirmation_number_outlined,
                              size: 18,
                            ),
                            const SizedBox(width: 6),
                            Text(context.t.transaction_details.transaction_id),
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
            ),
          ],
        ),
      ),
    );
  }
}
