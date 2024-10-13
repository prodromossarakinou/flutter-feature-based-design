import 'package:riverpod_example/core/data/models/address_representation.dart';
import 'package:riverpod_example/core/data/models/company_representation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_representation.g.dart';

@JsonSerializable()
class UserRepresentation {
  const UserRepresentation(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.address,
      required this.website,
      required this.company});

  final int id;
  final String name;
  final String username;
  final String email;
  final AddressRepresentation address;
  final String website;
  final CompanyRepresentation company;

  factory UserRepresentation.fromJson(Map<String, dynamic> json) =>
      _$UserRepresentationFromJson(json);

  Map<String, dynamic> toJson() => _$UserRepresentationToJson(this);
}
