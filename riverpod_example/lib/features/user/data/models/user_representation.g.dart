// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_representation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRepresentation _$UserRepresentationFromJson(Map<String, dynamic> json) =>
    UserRepresentation(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address: AddressRepresentation.fromJson(
          json['address'] as Map<String, dynamic>),
      website: json['website'] as String,
      company: CompanyRepresentation.fromJson(
          json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRepresentationToJson(UserRepresentation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'website': instance.website,
      'company': instance.company,
    };
