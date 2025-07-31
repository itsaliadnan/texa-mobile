import 'package:texa1_app/core/data/api/auth_api.dart';
import 'package:texa1_app/core/data/api/dio_client.dart';
import 'package:texa1_app/core/data/api/message_api.dart';

class ApiService {
  static AuthApi createAuth() {
    return AuthApi(dio);
  }

  static MessageApi createNessage() {
    return MessageApi(dio);
  }
}
