
import 'package:json_annotation/json_annotation.dart';

part 'geo_representation.g.dart';

@JsonSerializable()
class GeoRepresentation {

  const GeoRepresentation({
    required this.lat,
    required this.lng,
  });

  final String lat;
  final String lng;

  factory GeoRepresentation.fromJson(Map<String, dynamic> json) => _$GeoRepresentationFromJson(json);

  Map<String, dynamic> toJson() => _$GeoRepresentationToJson(this);
}
