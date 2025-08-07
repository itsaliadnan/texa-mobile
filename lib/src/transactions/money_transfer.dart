import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:texa1_app/constants/paginate.dart';
import 'package:texa1_app/core/data/api/transactions_api.dart';
import 'package:texa1_app/core/hooks/paging_controller_hook.dart';
import 'package:texa1_app/core/provider/transactions_provider.dart';
import 'package:texa1_app/src/shared/widgets/gradinet_container.dart';
import 'package:texa1_app/src/filter/filter/filter_widgets.dart';
import 'package:texa1_app/src/shared/widgets/transaction_tile.dart';
import 'package:texa1_app/translation/translations.g.dart';
import 'package:texa1_app/models/transactions_model.dart';

class MoneyTransferPage extends HookConsumerWidget {
  const MoneyTransferPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTransactionType = useState<TransactionTypes>(
      TransactionTypes.transfer,
    );
    final pagingController = usePagingController(
      fetchPage: (pageKey) async {
        final x = await ref
            .read(transactionsApiProvider)
            .getTransactions(
              pageNumber: pageKey,
              pageSize: pageSize,
              type: selectedTransactionType.value.name,
            );
        return x.data;
      },
    );

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
        child: PagingListener(
          controller: pagingController,
          builder: (context, state, fetchNextPage) => PagedListView.separated(
            state: state,
            fetchNextPage: fetchNextPage,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (_, __) => const SizedBox(height: 2),
            builderDelegate: PagedChildBuilderDelegate<TransactionsModel>(
              itemBuilder: (context, transaction, index) {
                return TransactionTile(transaction: transaction);
              },
            ),
          ),
        ),
      ),
    );
  }
}
