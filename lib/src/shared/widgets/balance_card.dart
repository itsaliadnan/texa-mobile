import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/translation/translations.g.dart';

class BalanceCard extends StatelessWidget {
  final bool obscure;
  final VoidCallback onToggle;

  const BalanceCard({super.key, required this.obscure, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 53,
      padding: const EdgeInsets.only(left: 18, right: 18, top: 12, bottom: 12),

      decoration: BoxDecoration(
        color: context.colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  context.t.balance_card.account_balance,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                  ),
                ),
                IconButton(
                  icon: obscure
                      ? SvgPicture.asset(
                          'lib/assets/icons/eye.svg',
                          width: 15,
                          height: 15,
                        )
                      : SvgPicture.asset(
                          'lib/assets/icons/eye_off.svg',
                          width: 15,
                          height: 15,
                        ),
                  onPressed: onToggle,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 8),
            child: Text(
              obscure
                  ? context.t.balance_card.hidden
                  : context.t.balance_card.visible,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
