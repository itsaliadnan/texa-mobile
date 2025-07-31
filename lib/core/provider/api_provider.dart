import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:texa1_app/core/data/api/auth_api.dart';
import 'package:texa1_app/core/provider/dio_provider.dart';

final authApiProvider = Provider<AuthApi>((ref) {
  final dio = ref.watch(dioProvider);
  return AuthApi(dio);
});
