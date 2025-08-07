import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/data/api/message_api.dart';

import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/models/message_model.dart';

final messagesController =
    FutureProvider.family<
      List<MessageModel>,
      ({int pageKey, MessageType messageType})
    >((ref, params) async {
      final page = params.pageKey;
      final type = (params.messageType);

      final res = await ref
          .read(messageApiProvider)
          .getMessages(page: page, type: type.name);

      return res.data;
    });
