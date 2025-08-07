import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/utils/number_format.dart';
import 'package:texa1_app/models/transactions_model.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TransactionTile extends StatelessWidget {
  final TransactionsModel transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    return Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.9,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
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
            padding: const EdgeInsets.all(2),

            child: SvgPicture.asset(
              'lib/assets/icons/home.svg',
              colorFilter: ColorFilter.mode(colors.primary, BlendMode.srcIn),
            ),
          ),
          const SizedBox(width: 12),

          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        transaction.transactionId.toString(),

                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                          fontSize: 10,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        transaction.transactionType.translate(context),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colors.primary,
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                // const SizedBox(width: 120),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        transaction.creationDate.formatDateTime(context.t),

                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Cairo',
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        transaction.amount.toString(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          color: colors.onSurface,
                        ),
                      ),

                      const SizedBox(height: 4),
                      Text(
                        transaction.transactionSign,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 10,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          color: colors.onSurface,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
