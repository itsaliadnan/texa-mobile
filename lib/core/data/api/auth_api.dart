import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/data/api/dio_client.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/models/login_response.dart';

part 'auth_api.g.dart';

final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(dioProvider));
});

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String? baseUrl}) = _AuthApi;

  @POST('/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest request);
}
