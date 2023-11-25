import 'package:json_annotation/json_annotation.dart';
import 'package:fantasyf1/api/modelos/ConstructorModel.dart';
import 'package:fantasyf1/api/modelos/DriverModel.dart';
part 'QualifyingResultModel.g.dart';

@JsonSerializable()
class QualifyingResultModel {
  int number;
  int position;
  DriverModel driver;
  ConstructorModel constructor;
  String q1;
  String q2;
  String q3;

  QualifyingResultModel({
    required this.number,
    required this.position,
    required this.driver,
    required this.constructor,
    required this.q1,
    required this.q2,
    required this.q3,
  });

  factory QualifyingResultModel.fromJson(Map<String, dynamic> json) => _$QualifyingResultModelFromJson(json);

  Map <String, dynamic> toJson() => _$QualifyingResultModelToJson(this);
}
