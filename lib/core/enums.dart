import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texa1_app/translation/translations.g.dart';

@JsonEnum()
enum MessageType {
  @JsonValue('Whattsapp')
  whatsapp,
  @JsonValue('InsideSms')
  insideIraq,
  @JsonValue('OutsideSms')
  outsideIraq;

  String get svgAsset {
    switch (this) {
      case MessageType.whatsapp:
        return 'lib/assets/icons/whatsapp.svg';
      case MessageType.insideIraq:
        return 'lib/assets/icons/login.svg';
      case MessageType.outsideIraq:
        return 'lib/assets/icons/logout.svg';
    }
  }

  String translate(BuildContext context) {
    switch (this) {
      case MessageType.whatsapp:
        return 'WhatsApp';
      case MessageType.insideIraq:
        return 'Inside Iraq';
      case MessageType.outsideIraq:
        return 'Outside Iraq';
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

enum MessageStatus { sent, failed, pending }

enum ProjectType { bexy, texa }

enum TransactionKind { invoice, transfer }

@JsonEnum()
enum TransactionType {
  @JsonValue('Custom')
  custom,
  @JsonValue('Deposit')
  deposit,
  @JsonValue('Invoice')
  invoice,
  @JsonValue('TexaExpenses')
  texaExpenses,
  @JsonValue('StatementOfAccountInvoice')
  statementOfAccountInvoice,
}

extension TransactionTypeExtension on TransactionType {
  String translate(BuildContext context) {
    switch (this) {
      case TransactionType.custom:
        return "custom";
      case TransactionType.deposit:
        return 'Deposit';
      case TransactionType.invoice:
        return 'Invoice';
      case TransactionType.texaExpenses:
        return 'Texa Expenses';
      case TransactionType.statementOfAccountInvoice:
        return 'Statement of Account Invoice';
    }
  }
}
