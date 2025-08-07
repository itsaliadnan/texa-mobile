import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "fullName")
  String fullName;
  @JsonKey(name: "phoneNumber")
  String phoneNumber;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "role")
  String role;
  @JsonKey(name: "token")
  dynamic token;
  @JsonKey(name: "isActive")
  bool isActive;
  @JsonKey(name: "projects")
  List<ProjectElement> projects;
  @JsonKey(name: "wallet")
  Wallet wallet;
  @JsonKey(name: "totalBalance")
  int totalBalance;
  @JsonKey(name: "projectWallets")
  List<Wallet> projectWallets;
  @JsonKey(name: "creationDate")
  DateTime creationDate;

  ProfileModel({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    required this.role,
    required this.token,
    required this.isActive,
    required this.projects,
    required this.wallet,
    required this.totalBalance,
    required this.projectWallets,
    required this.creationDate,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}

@JsonSerializable()
class Wallet {
  @JsonKey(name: "walletOwnerId")
  String walletOwnerId;
  @JsonKey(name: "balance")
  int balance;
  @JsonKey(name: "walletName")
  String walletName;
  @JsonKey(name: "walletType")
  String walletType;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "creationDate")
  DateTime creationDate;

  Wallet({
    required this.walletOwnerId,
    required this.balance,
    required this.walletName,
    required this.walletType,
    required this.id,
    required this.creationDate,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

  Map<String, dynamic> toJson() => _$WalletToJson(this);
}

@JsonSerializable()
class ProjectElement {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "wallet")
  Wallet wallet;
  @JsonKey(name: "user")
  dynamic user;
  @JsonKey(name: "code")
  String code;
  @JsonKey(name: "isProjectActive")
  bool isProjectActive;
  @JsonKey(name: "totalMessages")
  TotalMessages totalMessages;
  @JsonKey(name: "disableAt")
  int disableAt;
  @JsonKey(name: "preferredMethod")
  String preferredMethod;
  @JsonKey(name: "systemConfig")
  SystemConfig systemConfig;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "creationDate")
  DateTime creationDate;

  ProjectElement({
    required this.name,
    required this.wallet,
    required this.user,
    required this.code,
    required this.isProjectActive,
    required this.totalMessages,
    required this.disableAt,
    required this.preferredMethod,
    required this.systemConfig,
    required this.id,
    required this.creationDate,
  });

  factory ProjectElement.fromJson(Map<String, dynamic> json) =>
      _$ProjectElementFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectElementToJson(this);
}

@JsonSerializable()
class SystemConfig {
  @JsonKey(name: "whatsappPrice")
  int whatsappPrice;
  @JsonKey(name: "insideSms")
  int insideSms;
  @JsonKey(name: "outSideSms")
  int outSideSms;

  SystemConfig({
    required this.whatsappPrice,
    required this.insideSms,
    required this.outSideSms,
  });

  factory SystemConfig.fromJson(Map<String, dynamic> json) =>
      _$SystemConfigFromJson(json);

  Map<String, dynamic> toJson() => _$SystemConfigToJson(this);
}

@JsonSerializable()
class TotalMessages {
  @JsonKey(name: "whatsappMessages")
  int whatsappMessages;
  @JsonKey(name: "insideSms")
  int insideSms;
  @JsonKey(name: "outsideSms")
  int outsideSms;

  TotalMessages({
    required this.whatsappMessages,
    required this.insideSms,
    required this.outsideSms,
  });

  factory TotalMessages.fromJson(Map<String, dynamic> json) =>
      _$TotalMessagesFromJson(json);

  Map<String, dynamic> toJson() => _$TotalMessagesToJson(this);
}
