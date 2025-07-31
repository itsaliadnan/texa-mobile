import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:texa1_app/core/utils/parse_erorr.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/models/login_response.dart';

part 'auth_api.g.dart';

@RestApi(baseUrl: 'https://dev-api-sms.digital-logic-gen.com/api/user')
abstract class AuthApi {
  factory AuthApi(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) =
      _AuthApi;

  @POST('/auth/login')
  Future<LoginResponse> login(@Body() LoginRequest request);
}
