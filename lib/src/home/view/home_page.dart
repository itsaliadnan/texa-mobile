import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/core/provider/red_dot_notification_provider.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/src/shared/widgets/balance_card.dart';
import 'package:texa1_app/src/shared/widgets/clipped_container.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/src/shared/widgets/transaction_tile.dart';
import 'package:texa1_app/src/home/view/widgets/transfer_buttons.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final obscureBalance = useState(true);
    final hasNewNotifications = ref.watch(hasNewNotificationsProvider);

    final transactions = [
      {
        'title': context.t.home.transaction_bexy_title,
        'date': context.t.home.transaction_bexy_date,
        'amount': context.t.home.transaction_bexy_amount,
      },
      {
        'title': context.t.home.transaction_alpha_title,
        'date': context.t.home.transaction_alpha_date,
        'amount': context.t.home.transaction_alpha_amount,
      },
      {
        'title': context.t.home.transaction_bexy_title,
        'date': context.t.home.transaction_bexy_date,
        'amount': context.t.home.transaction_bexy_amount,
      },
    ];
    return Scaffold(
      body: GradientContainer(
        child: Column(
          children: [
            ClippedContainer(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            t.home.hello,
                            style: Theme.of(context).textTheme.bodyLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: context.colorScheme.onPrimary,
                                ),
                          ),
                          Text(
                            t.home.username,
                            style: Theme.of(context).textTheme.titleLarge
                                ?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: context.colorScheme.onPrimary,
                                ),
                          ),
                        ],
                      ),
                    ),
                    IconButton.filled(
                      style: IconButton.styleFrom(
                        backgroundColor: context.colorScheme.surface.withAlpha(
                          100,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      icon: Stack(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            color: context.colorScheme.onSurface,
                          ),
                          if (hasNewNotifications)
                            Positioned(
                              top: 2,
                              right: 2,
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: context.colorScheme.error,
                              ),
                            ),
                        ],
                      ),
                      onPressed: () {
                        ref.read(hasNewNotificationsProvider.notifier).state =
                            false;
                        context.push('/notifications');
                      },
                    ),
                  ],
                ),
              ),
            ),

            Transform.translate(
              offset: const Offset(0, -28),
              child: BalanceCard(
                obscure: obscureBalance.value,
                onToggle: () => obscureBalance.value = !obscureBalance.value,
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TransferButtons(),
            ),

            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.home.transfers,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () => context.push('/money-transfer'),
                    child: Text(
                      t.home.view_all,
                      style: TextStyle(color: context.colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: transactions.length,
                itemBuilder: (_, index) {
                  final tx = transactions[index];
                  return TransactionTile(
                    title: tx['title']!,
                    date: tx['date']!,
                    amount: tx['amount']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
