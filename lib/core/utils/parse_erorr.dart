import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ParseErrorLogger {
  void logError(Object error, StackTrace stackTrace, RequestOptions options) {
    debugPrint(' Error during parsing response from: ${options.path}');
    debugPrint(' Error: $error');
    debugPrint(' StackTrace: $stackTrace');
    debugPrint(' Request Options: ${options.method} ${options.uri}');
  }
}
