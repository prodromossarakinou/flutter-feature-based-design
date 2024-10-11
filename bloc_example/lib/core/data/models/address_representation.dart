import 'package:bloc_example/core/data/models/geo_representation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_representation.g.dart';

@JsonSerializable()
class AddressRepresentation {
  const AddressRepresentation({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoRepresentation geo;

  factory AddressRepresentation.fromJson(Map<String, dynamic> json) => _$AddressRepresentationFromJson(json);

  Map<String, dynamic> toJson() => _$AddressRepresentationToJson(this);
}
