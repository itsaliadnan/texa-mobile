// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
  content: json['content'],
  receiverPhoneNumber: json['receiverPhoneNumber'] as String,
  price: (json['price'] as num).toInt(),
  userPrice: (json['userPrice'] as num).toInt(),
  provider: NamedObject.fromJson(json['provider'] as Map<String, dynamic>),
  project: NamedObject.fromJson(json['project'] as Map<String, dynamic>),
  status: $enumDecode(_$MessageStatusEnumMap, json['status']),
  sentAt: DateTime.parse(json['sentAt'] as String),
  messageType: json['messageType'] as String,
);

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'content': instance.content,
      'receiverPhoneNumber': instance.receiverPhoneNumber,
      'price': instance.price,
      'userPrice': instance.userPrice,
      'provider': instance.provider,
      'project': instance.project,
      'status': _$MessageStatusEnumMap[instance.status]!,
      'sentAt': instance.sentAt.toIso8601String(),
      'messageType': instance.messageType,
    };

const _$MessageStatusEnumMap = {
  MessageStatus.sent: 'sent',
  MessageStatus.failed: 'failed',
  MessageStatus.pending: 'pending',
};

NamedObject _$NamedObjectFromJson(Map<String, dynamic> json) =>
    NamedObject(name: json['name'] as String);

Map<String, dynamic> _$NamedObjectToJson(NamedObject instance) =>
    <String, dynamic>{'name': instance.name};
