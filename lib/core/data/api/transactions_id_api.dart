// import 'package:dio/dio.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:retrofit/http.dart';
// import 'package:texa1_app/core/data/api/dio_client.dart';
// import 'package:texa1_app/core/utils/parse_erorr.dart';
// import 'package:texa1_app/models/message_model.dart';
// import 'package:texa1_app/models/paging_response.dart';
// import 'package:texa1_app/models/transactions_model.dart';
// import 'package:texa1_app/src/transactions/model/transaction.dart';

// part 'transactions_id_api.g.dart';

// final transactionsApiProvider = Provider<TransactionsIdApi>((ref) {
//   return TransactionsIdApi(ref.read(dioProvider));
// });

// @RestApi()
// abstract class TransactionsIdApi {
//   factory TransactionsIdApi(Dio dio, {String? baseUrl}) = _TransactionsIdApi;
//   @GET('/transactions/{id}')
//   Future<PagingResponse<TransactionsModel>> getTransactions({
//     @Query("pageNumber") required int pageNumber,
//     @Query("pageSize") required int pageSize,
//     @Query("type") required String type,
//   });
// }
