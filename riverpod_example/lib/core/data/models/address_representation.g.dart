// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_representation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressRepresentation _$AddressRepresentationFromJson(
        Map<String, dynamic> json) =>
    AddressRepresentation(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoRepresentation.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressRepresentationToJson(
        AddressRepresentation instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo,
    };
