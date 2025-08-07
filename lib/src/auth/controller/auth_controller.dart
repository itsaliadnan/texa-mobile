import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/core/data/api/auth_api.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';
import 'package:texa1_app/models/login_request.dart';
import 'package:texa1_app/models/login_response.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final authControllerProvider =
    AsyncNotifierProvider<AuthController, LoginResponse?>(
      () => AuthController(),
    );

class AuthController extends AsyncNotifier<LoginResponse?> {
  @override
  Future<LoginResponse?> build() async {
    final isLoggedIn =
        ref.read(localStorageProvider).getLoginResponse() != null;
    log('isLoggedIn: ${ref.read(localStorageProvider).getLoginResponse()}');
    if (isLoggedIn == false) return null;

    final response = ref.read(localStorageProvider).getLoginResponse();
    return response;
  }

  Future<void> login(LoginRequest request) async {
    final res = await ref.read(authApiProvider).login(request);
    await ref.read(localStorageProvider).saveLoginResponse(res);
    ref.invalidateSelf();
  }

  Future<void> logout() async {
    await ref.read(localStorageProvider).clearLoginRrsponse();
    ref.invalidateSelf();
  }
}
