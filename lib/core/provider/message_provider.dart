import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/data/remote/api_service.dart';
import 'package:texa1_app/core/data/repository/message_repository.dart';
import 'package:texa1_app/core/enums.dart';
import 'package:texa1_app/models/message_model.dart';

final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  final api = ApiService.createNessage();
  return MessageRepository(api);
});

final messagesController =
    FutureProvider.family<
      List<MessageModel>,
      ({int pageKey, MessageType messageType})
    >((ref, params) async {
      final page = params.pageKey;
      final type = (params.messageType);

      final res = await ref
          .read(messageRepositoryProvider)
          .getMessages(page: page, type: type.name);

      return res.data;
    });
