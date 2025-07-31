import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/models/paging_response.dart';

abstract class IMessageRepository {
  Future<PagingResponse<MessageModel>> getMessages({
    required int page,
    required String type,
  });
}
