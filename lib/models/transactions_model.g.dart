// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsModel _$TransactionsModelFromJson(
  Map<String, dynamic> json,
) => TransactionsModel(
  id: json['id'] as String,
  fromWalletId: json['fromWalletId'] as String,
  fromWallet: NamedObject.fromJson(json['fromWallet'] as Map<String, dynamic>),
  toWalletId: json['toWalletId'] as String,
  toWallet: NamedObject.fromJson(json['toWallet'] as Map<String, dynamic>),
  amount: (json['amount'] as num).toDouble(),
  description: json['description'] as String,
  transactionType: $enumDecode(
    _$TransactionTypeEnumMap,
    json['transactionType'],
  ),
  transactionId: json['transactionId'] as String?,
  projectName: json['projectName'] as String,
  userName: json['userName'] as String,
  totalMessagesAndPrice: json['totalMessagesAndPrice'] == null
      ? null
      : NamedObject.fromJson(
          json['totalMessagesAndPrice'] as Map<String, dynamic>,
        ),
  transactionSign: json['transactionSign'] as String,
  invoiceType: json['invoiceType'] as String?,
  fromWalletBalanceBefore: (json['fromWalletBalanceBefore'] as num?)
      ?.toDouble(),
  fromWalletBalanceAfter: (json['fromWalletBalanceAfter'] as num?)?.toDouble(),
  toWalletBalanceBefore: (json['toWalletBalanceBefore'] as num?)?.toDouble(),
  toWalletBalanceAfter: (json['toWalletBalanceAfter'] as num?)?.toDouble(),
  creationDate: DateTime.parse(json['creationDate'] as String),
);

Map<String, dynamic> _$TransactionsModelToJson(TransactionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fromWalletId': instance.fromWalletId,
      'fromWallet': instance.fromWallet,
      'toWalletId': instance.toWalletId,
      'toWallet': instance.toWallet,
      'amount': instance.amount,
      'description': instance.description,
      'transactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
      'transactionId': instance.transactionId,
      'projectName': instance.projectName,
      'userName': instance.userName,
      'totalMessagesAndPrice': instance.totalMessagesAndPrice,
      'transactionSign': instance.transactionSign,
      'invoiceType': instance.invoiceType,
      'fromWalletBalanceBefore': instance.fromWalletBalanceBefore,
      'fromWalletBalanceAfter': instance.fromWalletBalanceAfter,
      'toWalletBalanceBefore': instance.toWalletBalanceBefore,
      'toWalletBalanceAfter': instance.toWalletBalanceAfter,
      'creationDate': instance.creationDate.toIso8601String(),
    };

const _$TransactionTypeEnumMap = {
  TransactionType.custom: 'Custom',
  TransactionType.deposit: 'Deposit',
  TransactionType.invoice: 'Invoice',
  TransactionType.texaExpenses: 'TexaExpenses',
  TransactionType.statementOfAccountInvoice: 'StatementOfAccountInvoice',
};
