import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:texa1_app/core/data/remote/api_service.dart';
import 'package:texa1_app/core/data/repository/auth_repository.dart';
import 'package:texa1_app/models/login_response.dart';
import 'package:texa1_app/src/auth/controller/auth_controller.dart';

// repository provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final api = ApiService.createAuth();
  return AuthRepository(api);
});

// Controller provider
final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<LoginResponse?>>((ref) {
      final repo = ref.watch(authRepositoryProvider);
      return AuthController(ref, repo);
    });
