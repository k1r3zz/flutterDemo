// GENERATED CODE - DO NOT MODIFY BY HAND

part of DataEntity;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

DataEntity _$DataEntityFromJson(Map<String, dynamic> json) => new DataEntity(
    json['body'] as String, json['userId'] as String, json['title'] as String);

abstract class _$DataEntitySerializerMixin {
  String get userId;
  String get title;
  String get body;
  Map<String, dynamic> toJson() =>
      <String, dynamic>{'userId': userId, 'title': title, 'body': body};
}
