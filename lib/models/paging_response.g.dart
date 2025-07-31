// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagingResponse<T> _$PagingResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => PagingResponse<T>(
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  pagesCount: (json['pagesCount'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  type: json['type'] as String,
  totalCount: (json['totalCount'] as num).toInt(),
);

Map<String, dynamic> _$PagingResponseToJson<T>(
  PagingResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data.map(toJsonT).toList(),
  'pagesCount': instance.pagesCount,
  'currentPage': instance.currentPage,
  'type': instance.type,
  'totalCount': instance.totalCount,
};
