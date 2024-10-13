// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_representation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyRepresentation _$CompanyRepresentationFromJson(
        Map<String, dynamic> json) =>
    CompanyRepresentation(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$CompanyRepresentationToJson(
        CompanyRepresentation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
