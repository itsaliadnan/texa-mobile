import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/models/paging_response.dart';

part 'message_api.g.dart';

@RestApi(baseUrl: 'https://dev-api-sms.digital-logic-gen.com/api/user')
abstract class MessageApi {
  factory MessageApi(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _MessageApi;
  @GET('/messages/mymessages')
  Future<PagingResponse<MessageModel>> getMessages({
    @Query("page") required int page,
    @Query("type")
    required String
    type, // assuming type is a string like 'inbox', 'sent', etc.
  });
}
