import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texa1_app/core/enums.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  @JsonKey(name: "content")
  dynamic content;
  @JsonKey(name: "receiverPhoneNumber")
  String receiverPhoneNumber;
  @JsonKey(name: "price")
  int price;
  @JsonKey(name: "userPrice")
  int userPrice;
  @JsonKey(name: "provider")
  NamedObject provider;
  @JsonKey(name: "project")
  NamedObject project;
  @JsonKey(name: "status")
  MessageStatus status;
  @JsonKey(name: "sentAt")
  DateTime sentAt;
  @JsonKey(name: "messageType")
  String messageType;

  MessageModel({
    required this.content,
    required this.receiverPhoneNumber,
    required this.price,
    required this.userPrice,
    required this.provider,
    required this.project,
    required this.status,
    required this.sentAt,
    required this.messageType,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable()
class NamedObject {
  @JsonKey(name: "name")
  String name;

  NamedObject({required this.name});

  factory NamedObject.fromJson(Map<String, dynamic> json) =>
      _$NamedObjectFromJson(json);

  Map<String, dynamic> toJson() => _$NamedObjectToJson(this);
}
