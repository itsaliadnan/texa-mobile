import 'package:texa1_app/core/data/api/auth_api.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/models/login_response.dart';

class AuthRepository {
  final AuthApi _api;

  AuthRepository(this._api);

  Future<LoginResponse> login(LoginRequest request) {
    return _api.login(request);
  }
}
