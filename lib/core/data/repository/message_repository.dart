import 'package:texa1_app/core/data/api/message_api.dart';
import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/models/paging_response.dart';

class MessageRepository {
  final MessageApi _api;

  MessageRepository(this._api);
  Future<PagingResponse<MessageModel>> getMessages({
    required int page,
    required String type,
  }) {
    return _api.getMessages(page: page, type: type);
  }
}
