import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/models/login_response.dart';

abstract class IAuthRepository {
  Future<LoginResponse> login(LoginRequest request);
}
