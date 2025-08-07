// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
  id: json['id'] as String,
  fullName: json['fullName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  token: json['token'],
  isActive: json['isActive'] as bool,
  projects: (json['projects'] as List<dynamic>)
      .map((e) => ProjectElement.fromJson(e as Map<String, dynamic>))
      .toList(),
  wallet: Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
  totalBalance: (json['totalBalance'] as num).toInt(),
  projectWallets: (json['projectWallets'] as List<dynamic>)
      .map((e) => Wallet.fromJson(e as Map<String, dynamic>))
      .toList(),
  creationDate: DateTime.parse(json['creationDate'] as String),
);

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
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
      'creationDate': instance.creationDate.toIso8601String(),
    };

Wallet _$WalletFromJson(Map<String, dynamic> json) => Wallet(
  walletOwnerId: json['walletOwnerId'] as String,
  balance: (json['balance'] as num).toInt(),
  walletName: json['walletName'] as String,
  walletType: json['walletType'] as String,
  id: json['id'] as String,
  creationDate: DateTime.parse(json['creationDate'] as String),
);

Map<String, dynamic> _$WalletToJson(Wallet instance) => <String, dynamic>{
  'walletOwnerId': instance.walletOwnerId,
  'balance': instance.balance,
  'walletName': instance.walletName,
  'walletType': instance.walletType,
  'id': instance.id,
  'creationDate': instance.creationDate.toIso8601String(),
};

ProjectElement _$ProjectElementFromJson(Map<String, dynamic> json) =>
    ProjectElement(
      name: json['name'] as String,
      wallet: Wallet.fromJson(json['wallet'] as Map<String, dynamic>),
      user: json['user'],
      code: json['code'] as String,
      isProjectActive: json['isProjectActive'] as bool,
      totalMessages: TotalMessages.fromJson(
        json['totalMessages'] as Map<String, dynamic>,
      ),
      disableAt: (json['disableAt'] as num).toInt(),
      preferredMethod: json['preferredMethod'] as String,
      systemConfig: SystemConfig.fromJson(
        json['systemConfig'] as Map<String, dynamic>,
      ),
      id: json['id'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
    );

Map<String, dynamic> _$ProjectElementToJson(ProjectElement instance) =>
    <String, dynamic>{
      'name': instance.name,
      'wallet': instance.wallet,
      'user': instance.user,
      'code': instance.code,
      'isProjectActive': instance.isProjectActive,
      'totalMessages': instance.totalMessages,
      'disableAt': instance.disableAt,
      'preferredMethod': instance.preferredMethod,
      'systemConfig': instance.systemConfig,
      'id': instance.id,
      'creationDate': instance.creationDate.toIso8601String(),
    };

SystemConfig _$SystemConfigFromJson(Map<String, dynamic> json) => SystemConfig(
  whatsappPrice: (json['whatsappPrice'] as num).toInt(),
  insideSms: (json['insideSms'] as num).toInt(),
  outSideSms: (json['outSideSms'] as num).toInt(),
);

Map<String, dynamic> _$SystemConfigToJson(SystemConfig instance) =>
    <String, dynamic>{
      'whatsappPrice': instance.whatsappPrice,
      'insideSms': instance.insideSms,
      'outSideSms': instance.outSideSms,
    };

TotalMessages _$TotalMessagesFromJson(Map<String, dynamic> json) =>
    TotalMessages(
      whatsappMessages: (json['whatsappMessages'] as num).toInt(),
      insideSms: (json['insideSms'] as num).toInt(),
      outsideSms: (json['outsideSms'] as num).toInt(),
    );

Map<String, dynamic> _$TotalMessagesToJson(TotalMessages instance) =>
    <String, dynamic>{
      'whatsappMessages': instance.whatsappMessages,
      'insideSms': instance.insideSms,
      'outsideSms': instance.outsideSms,
    };
