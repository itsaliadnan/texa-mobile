// lib/models/login_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String id,
    required String fullName,
    required String phoneNumber,
    required String email,
    required String role,
    required String token,
    required bool isActive,
    required List<dynamic> projects,
    required dynamic wallet,
    required int totalBalance,
    required List<dynamic> projectWallets,
    required String creationDate,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
