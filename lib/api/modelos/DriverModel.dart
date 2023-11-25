import 'package:json_annotation/json_annotation.dart';
part 'DriverModel.g.dart';

@JsonSerializable()
class DriverModel {
  String driverId;
  String givenName;
  String familyName;
  String nationality;
  int permanentNumber;
  String code;
  String dateOfBirth;

  DriverModel({
    required this.driverId,
    required this.givenName,
    required this.familyName,
    required this.nationality,
    required this.permanentNumber,
    required this.code,
    required this.dateOfBirth,
  });

  factory DriverModel.fromJson(Map<String, dynamic> json) => _$DriverModelFromJson(json);

  Map <String, dynamic> toJson() => _$DriverModelToJson(this);
}
