import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/src/filter/filter/filter_widgets.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/src/transactions/model/transaction.dart';
import 'package:texa1_app/translation/translations.g.dart' as context;

class MoneyTransferPage extends StatelessWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = context.t;

    return Scaffold(
      appBar: AppBar(
        title: Text(t.home.transfers),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                builder: (context) => const FractionallySizedBox(
                  heightFactor: 0.7,
                  child: GradientContainer(child: FilterWidget()),
                ),
              );
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: GradientContainer(
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: _mockTransactions.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final tx = _mockTransactions[index];
            return GestureDetector(
              onTap: () {
                context.push('/money-transfer/details', extra: tx);
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: context.colorScheme.surfaceContainerLowest,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: SvgPicture.asset(
                    'lib/assets/icons/home.svg',
                    width: 18,
                    height: 18,
                    colorFilter: ColorFilter.mode(
                      context.colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),

                  title: Text(tx.title),
                  subtitle: Text(tx.date),
                  trailing: Text(
                    tx.amount,
                    style: TextStyle(
                      color: context.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

final _mockTransactions = [
  Transaction(
    title: '${context.t.full_transfer_details.bexy}',
    date: context.t.full_transfer_details.sport_app_date,
    amount: context.t.full_transfer_details.sport_app_amount,
    projectName: context.t.full_transfer_details.bexy,
    projectDescription: context.t.full_transfer_details.sport_app,
    projectManager: context.t.full_transfer_details.sport_app_manager,
    projectCreatedAt: context.t.full_transfer_details.sport_app_created_at,
  ),
  Transaction(
    title: '${context.t.full_transfer_details.alpha} ',
    date: context.t.full_transfer_details.sport_app_date,
    amount: context.t.full_transfer_details.sport_app_amount,
    projectName: context.t.full_transfer_details.alpha,
    projectDescription: context.t.full_transfer_details.sport_app,
    projectManager: context.t.full_transfer_details.sport_app_manager,
    projectCreatedAt: context.t.full_transfer_details.sport_app_created_at,
  ),
  Transaction(
    title: '${context.t.full_transfer_details.bexy} ',
    date: context.t.full_transfer_details.sport_app_date,
    amount: context.t.full_transfer_details.sport_app_amount,
    projectName: context.t.full_transfer_details.bexy,
    projectDescription: context.t.full_transfer_details.sport_app,
    projectManager: context.t.full_transfer_details.sport_app_manager,
    projectCreatedAt: context.t.full_transfer_details.sport_app_created_at,
  ),
  Transaction(
    title: '${context.t.full_transfer_details.alpha} ',
    date: context.t.full_transfer_details.sport_app_date,
    amount: context.t.full_transfer_details.sport_app_amount,
    projectName: context.t.full_transfer_details.alpha,
    projectDescription: context.t.full_transfer_details.sport_app,
    projectManager: context.t.full_transfer_details.sport_app_manager,
    projectCreatedAt: context.t.full_transfer_details.sport_app_created_at,
  ),
];
