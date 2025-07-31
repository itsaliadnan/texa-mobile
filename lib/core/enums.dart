import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum MessageType {
  whatsapp,
  insideIraq,
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
