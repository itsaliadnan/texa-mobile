// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:texa1_app/core/data/repository/auth_repository.dart';
// import 'package:texa1_app/core/provider/local_storage_provider.dart';
// import 'package:texa1_app/models/login_request.dart';
// import 'package:texa1_app/models/login_response.dart';

// class MessagesController extends StateNotifier<AsyncValue<LoginResponse?>> {
//   final Ref ref;
//   final AuthRepository _authRepository;

//   MessagesController(this.ref, this._authRepository) : super(AsyncData(null));

//   Future<void> login(LoginRequest request) async {
//     state = const AsyncLoading();

//     try {
//       final response = await _authRepository.login(request);
//       final localStorage = ref.read(localStorageProvider);
//       await localStorage.saveToken(response.token);

//       debugPrint('✅ تم تسجيل الدخول: ${response.token}');
//       state = AsyncData(response);
//     } catch (e, st) {
//       debugPrint('❌ خطأ أثناء تسجيل الدخول: $e');
//       state = AsyncError(e, st);
//     }
//   }
// }
