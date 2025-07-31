import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/translation/translations.g.dart';

class TransferButtons extends StatelessWidget {
  const TransferButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.push('/transfer-page');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: context.colorScheme.surface,
                  minimumSize: const Size(157.5, 72),
                  padding: const EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: SvgPicture.asset(
                  'lib/assets/icons/transfer.svg',
                  width: 29.71,
                  height: 28.14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                context.t.home.transfer_buttons.transfer,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.colorScheme.primary,
                  foregroundColor: context.colorScheme.surface,
                  minimumSize: const Size(157.5, 72),
                  padding: const EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: SvgPicture.asset(
                  'lib/assets/icons/deposit.svg',
                  width: 29.71,
                  height: 28.14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                context.t.home.transfer_buttons.deposit,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
