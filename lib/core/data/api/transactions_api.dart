import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/data/api/dio_client.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/paging_response.dart';
import 'package:texa1_app/models/transactions_model.dart';

part 'transactions_api.g.dart';

final transactionsApiProvider = Provider<TransactionsApi>((ref) {
  return TransactionsApi(ref.read(dioProvider));
});

@RestApi()
abstract class TransactionsApi {
  factory TransactionsApi(Dio dio, {String? baseUrl}) = _TransactionsApi;
  @GET('/transactions/mytransactions')
  Future<PagingResponse<TransactionsModel>> getTransactions({
    @Query("pageNumber") required int pageNumber,
    @Query("pageSize") required int pageSize,
    @Query("type") required String type,
  });
}
