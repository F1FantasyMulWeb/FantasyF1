import 'package:fantasyf1/api/modelos/ConstructorModel.dart';
import 'package:fantasyf1/api/modelos/DriverModel.dart';
import 'package:fantasyf1/api/modelos/FastestLapModel.dart';
import 'package:fantasyf1/api/modelos/TimeModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'RaceResultModel.g.dart';


@JsonSerializable()
class RaceResultModel {
  int number;
  int position;
  double points;
  int grid;
  int laps;
  String status;
  DriverModel driver;
  ConstructorModel constructor;
  TimeModel time;
  FastestLapModel fastestLap;

  RaceResultModel({
    required this.number,
    required this.position,
    required this.points,
    required this.grid,
    required this.laps,
    required this.status,
    required this.driver,
    required this.constructor,
    required this.time,
    required this.fastestLap,
  });

  factory RaceResultModel.fromJson(Map<String, dynamic> json) => _$RaceResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$RaceResultModelToJson(this);
}

