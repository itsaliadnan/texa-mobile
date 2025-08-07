import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/models/message_model.dart';

part 'transactions_model.g.dart';

@JsonSerializable()
class TransactionsModel {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "fromWalletId")
  String fromWalletId;
  @JsonKey(name: "fromWallet")
  NamedObject fromWallet;
  @JsonKey(name: "toWalletId")
  String toWalletId;
  @JsonKey(name: "toWallet")
  NamedObject toWallet;
  @JsonKey(name: "amount")
  double amount;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "transactionType")
  TransactionType transactionType;
  @JsonKey(name: "transactionId")
  String? transactionId;
  @JsonKey(name: "projectName")
  String projectName;
  @JsonKey(name: "userName")
  String userName;
  @JsonKey(name: "totalMessagesAndPrice")
  NamedObject? totalMessagesAndPrice;
  @JsonKey(name: "transactionSign")
  String transactionSign;
  @JsonKey(name: "invoiceType")
  String? invoiceType;
  @JsonKey(name: "fromWalletBalanceBefore")
  double? fromWalletBalanceBefore;
  @JsonKey(name: "fromWalletBalanceAfter")
  double? fromWalletBalanceAfter;
  @JsonKey(name: "toWalletBalanceBefore")
  double? toWalletBalanceBefore;
  @JsonKey(name: "toWalletBalanceAfter")
  double? toWalletBalanceAfter;
  @JsonKey(name: "creationDate")
  DateTime creationDate;

  TransactionsModel({
    required this.id,
    required this.fromWalletId,
    required this.fromWallet,
    required this.toWalletId,
    required this.toWallet,
    required this.amount,
    required this.description,
    required this.transactionType,
    this.transactionId,
    required this.projectName,
    required this.userName,
    this.totalMessagesAndPrice,
    required this.transactionSign,
    this.invoiceType,
    this.fromWalletBalanceBefore,
    this.fromWalletBalanceAfter,
    this.toWalletBalanceBefore,
    this.toWalletBalanceAfter,
    required this.creationDate,
  });

  factory TransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionsModelFromJson(json);

  get length => null;

  Map<String, dynamic> toJson() => _$TransactionsModelToJson(this);
}
