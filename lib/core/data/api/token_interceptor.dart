import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/provider/local_storage_provider.dart';
import 'package:texa1_app/src/auth/controller/auth_controller.dart';

class TokenInterceptor extends Interceptor {
  final Ref ref;

  TokenInterceptor(this.ref);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = ref.read(localStorageProvider).getLoginResponse()?.token;
    log('TokenInterceptor: $token');
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      ref.read(authControllerProvider.notifier).logout();
    }
    handler.next(err);
  }
}
