import 'package:fantasyf1/api/modelos/ConstructorModel.dart';
import 'package:fantasyf1/api/modelos/DriverModel.dart';
import 'package:fantasyf1/api/modelos/LocationModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'CircuitModel.g.dart';

@JsonSerializable()
class CircuitModel {
  String circuitId;
  String circuitName;
  String raceName;
  String map;
  LocationModel location;

  CircuitModel({
    required this.circuitId,
    required this.circuitName,
    required this.raceName,
    required this.map,
    required this.location,
  });

  factory CircuitModel.fromJson(Map<String, dynamic> json) => _$CircuitModelFromJson(json);

  Map <String, dynamic> toJson() => _$CircuitModelToJson(this);
}
