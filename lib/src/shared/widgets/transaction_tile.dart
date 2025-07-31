// lib/shared/widgets/transaction_tile.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String date;
  final String amount;

  const TransactionTile({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: colors.shadow.withValues(alpha: 0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),

            child: SvgPicture.asset(
              'lib/assets/icons/home.svg',
              colorFilter: ColorFilter.mode(colors.primary, BlendMode.srcIn),
            ),
          ),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: colors.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
          ),

          Text(
            amount,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: amount.startsWith('-')
                  ? context.colorScheme.error
                  : colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
