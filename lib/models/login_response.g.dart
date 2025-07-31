// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      token: json['token'] as String,
      isActive: json['isActive'] as bool,
      projects: json['projects'] as List<dynamic>,
      wallet: json['wallet'],
      totalBalance: (json['totalBalance'] as num).toInt(),
      projectWallets: json['projectWallets'] as List<dynamic>,
      creationDate: json['creationDate'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'role': instance.role,
      'token': instance.token,
      'isActive': instance.isActive,
      'projects': instance.projects,
      'wallet': instance.wallet,
      'totalBalance': instance.totalBalance,
      'projectWallets': instance.projectWallets,
      'creationDate': instance.creationDate,
    };
