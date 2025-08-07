// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'project.g.dart';

// @JsonSerializable()
// class Project {
//   @JsonKey(name: "name")
//   String name;
//   @JsonKey(name: "wallet")
//   Wallet wallet;
//   @JsonKey(name: "user")
//   dynamic user;
//   @JsonKey(name: "code")
//   String code;
//   @JsonKey(name: "isProjectActive")
//   bool isProjectActive;
//   @JsonKey(name: "totalMessages")
//   TotalMessages totalMessages;
//   @JsonKey(name: "disableAt")
//   int disableAt;
//   @JsonKey(name: "preferredMethod")
//   String preferredMethod;
//   @JsonKey(name: "systemConfig")
//   SystemConfig systemConfig;
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "creationDate")
//   DateTime creationDate;

//   Project({
//     required this.name,
//     required this.wallet,
//     required this.user,
//     required this.code,
//     required this.isProjectActive,
//     required this.totalMessages,
//     required this.disableAt,
//     required this.preferredMethod,
//     required this.systemConfig,
//     required this.id,
//     required this.creationDate,
//   });

//   factory Project.fromJson(Map<String, dynamic> json) =>
//       _$ProjectFromJson(json);

//   Map<String, dynamic> toJson() => _$ProjectToJson(this);
// }

// @JsonSerializable()
// class SystemConfig {
//   @JsonKey(name: "whatsappPrice")
//   int whatsappPrice;
//   @JsonKey(name: "insideSms")
//   int insideSms;
//   @JsonKey(name: "outSideSms")
//   int outSideSms;

//   SystemConfig({
//     required this.whatsappPrice,
//     required this.insideSms,
//     required this.outSideSms,
//   });

//   factory SystemConfig.fromJson(Map<String, dynamic> json) =>
//       _$SystemConfigFromJson(json);

//   Map<String, dynamic> toJson() => _$SystemConfigToJson(this);
// }

// @JsonSerializable()
// class TotalMessages {
//   @JsonKey(name: "whatsappMessages")
//   int whatsappMessages;
//   @JsonKey(name: "insideSms")
//   int insideSms;
//   @JsonKey(name: "outsideSms")
//   int outsideSms;

//   TotalMessages({
//     required this.whatsappMessages,
//     required this.insideSms,
//     required this.outsideSms,
//   });

//   factory TotalMessages.fromJson(Map<String, dynamic> json) =>
//       _$TotalMessagesFromJson(json);

//   Map<String, dynamic> toJson() => _$TotalMessagesToJson(this);
// }

// @JsonSerializable()
// class Wallet {
//   @JsonKey(name: "walletOwnerId")
//   String walletOwnerId;
//   @JsonKey(name: "balance")
//   int balance;
//   @JsonKey(name: "walletName")
//   String walletName;
//   @JsonKey(name: "walletType")
//   String walletType;
//   @JsonKey(name: "id")
//   String id;
//   @JsonKey(name: "creationDate")
//   DateTime creationDate;

//   Wallet({
//     required this.walletOwnerId,
//     required this.balance,
//     required this.walletName,
//     required this.walletType,
//     required this.id,
//     required this.creationDate,
//   });

//   factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);

//   Map<String, dynamic> toJson() => _$WalletToJson(this);
// }
