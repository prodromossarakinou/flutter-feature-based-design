import 'package:json_annotation/json_annotation.dart';

part 'company_representation.g.dart';

@JsonSerializable()
class CompanyRepresentation {
  const CompanyRepresentation({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  final String name;
  final String catchPhrase;
  final String bs;

  factory CompanyRepresentation.fromJson(Map<String, dynamic> json) => _$CompanyRepresentationFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyRepresentationToJson(this);
}
