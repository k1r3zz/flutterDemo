library DataEntity;

import 'package:json_annotation/json_annotation.dart';

part 'DataEntity.g.dart';

@JsonSerializable()

class DataEntity extends Object with _$DataEntitySerializerMixin{
  DataEntity(this.body,this.userId,this.title);

  String userId;
  String title;
  String body;

  factory DataEntity.fromJson(Map<String,dynamic> json) => _$DataEntityFromJson(json);

}
