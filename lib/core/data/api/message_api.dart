import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/data/api/dio_client.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/message_model.dart';
import 'package:texa1_app/models/paging_response.dart';

part 'message_api.g.dart';

final messageApiProvider = Provider<MessageApi>((ref) {
  return MessageApi(ref.read(dioProvider));
});

@RestApi()
abstract class MessageApi {
  factory MessageApi(Dio dio, {String? baseUrl}) = _MessageApi;
  @GET('/messages/mymessages')
  Future<PagingResponse<MessageModel>> getMessages({
    @Query("page") required int page,
    @Query("type") required String type,
  });
}
