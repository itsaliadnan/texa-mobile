import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PagingResponse<T> {
  @JsonKey(name: "data")
  List<T> data;
  @JsonKey(name: "pagesCount")
  int pagesCount;
  @JsonKey(name: "currentPage")
  int currentPage;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "totalCount")
  int totalCount;

  PagingResponse({
    required this.data,
    required this.pagesCount,
    required this.currentPage,
    required this.type,
    required this.totalCount,
  });

  factory PagingResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? t) fromJsonT,
  ) => _$PagingResponseFromJson<T>(json, fromJsonT);
}
