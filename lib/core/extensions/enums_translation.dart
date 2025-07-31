import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/core/extensions/context_extensions.dart';
import 'package:texa1_app/translation/translations.g.dart';

extension MessageTypeExtension on MessageType {
  String translate(BuildContext context) => switch (this) {
    MessageType.whatsapp => context.t.message_type.whatsapp,
    MessageType.insideIraq => context.t.message_type.insideIraq,
    MessageType.outsideIraq => context.t.message_type.outsideIraq,
  };

  Widget icon(Color color) => switch (this) {
    MessageType.whatsapp => SvgPicture.asset(
      'assets/icons/whatsapp.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    ),
    MessageType.insideIraq => SvgPicture.asset(
      'assets/icons/login.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    ),
    MessageType.outsideIraq => SvgPicture.asset(
      'assets/icons/logout.svg',
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    ),
  };
}

extension MessageStatusExtension on MessageStatus {
  String translate(BuildContext context) => switch (this) {
    MessageStatus.sent => context.t.message_status.sent,
    MessageStatus.failed => context.t.message_status.failed,
    MessageStatus.pending => context.t.message_status.pending,
  };
  Color color(BuildContext context) => switch (this) {
    MessageStatus.sent => context.colorScheme.primary,
    MessageStatus.failed => context.colorScheme.error,
    MessageStatus.pending => Colors.yellow,
  };
}
