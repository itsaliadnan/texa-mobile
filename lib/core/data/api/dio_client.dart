import 'package:dio/dio.dart';

import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'https://dev-api-sms.digital-logic-gen.com/api/user',
    headers: {'Content-Type': 'application/json'},
  ),
)..interceptors.add(AwesomeDioInterceptor());
