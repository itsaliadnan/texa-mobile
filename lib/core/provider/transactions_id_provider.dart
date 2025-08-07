import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/constants/paginate.dart';
import 'package:texa1_app/core/data/api/transactions_api.dart';
import 'package:texa1_app/models/transactions_model.dart';

final transactionsController =
    FutureProvider.family<
      List<TransactionsModel>,
      ({int pageKey, TransactionType transactionType})
    >((ref, params) async {
      final page = params.pageKey;
      final type = (params.transactionType);

      final res = await ref
          .read(transactionsApiProvider)
          .getTransactions(
            pageNumber: page,
            type: type.name,
            pageSize: pageSize,
          );

      return res.data;
    });

@JsonEnum()
enum TransactionType {
  @JsonValue('Invoice')
  invoice,
  @JsonValue('Transfer')
  transfer;

  String get svgAsset {
    switch (this) {
      case TransactionType.invoice:
        return 'lib/assets/icons/invoice.svg';
      case TransactionType.transfer:
        return 'lib/assets/icons/transfer.svg';
    }
  }

  String translate(BuildContext context) {
    switch (this) {
      case TransactionType.invoice:
        return 'Invoice';
      case TransactionType.transfer:
        return 'Transfer';
    }
  }

  Widget icon(Color color) {
    return SvgPicture.asset(
      svgAsset,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      width: 24,
      height: 24,
    );
  }
}

enum TransactionKind { invoice, transfer }

enum TransactionStatus { pending, completed, failed }
