import 'package:dio/dio.dart';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/core/data/api/token_interceptor.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio =
      Dio(
          BaseOptions(
            baseUrl: 'https://dev-api-sms.digital-logic-gen.com/api/user',
            // headers: {'Content-Type': 'application/json'},
          ),
        )
        ..interceptors.add(AwesomeDioInterceptor())
        ..interceptors.add(TokenInterceptor(ref));

  return dio;
});
