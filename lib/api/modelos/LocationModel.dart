import 'package:json_annotation/json_annotation.dart';
part 'LocationModel.g.dart';

@JsonSerializable()
class LocationModel {
  String locality;
  String flag;
  String country;

  LocationModel({required this.locality, required this.flag, required this.country});

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);

  Map <String, dynamic> toJson() => _$LocationModelToJson(this);
}