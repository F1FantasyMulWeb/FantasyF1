import 'DriverModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ConstructorModel.g.dart';

@JsonSerializable()
class ConstructorModel {
  String constructorId;
  int position;
  String name;
  String nationality;
  double points;
  int wins;
  String color;
  List<DriverModel> drivers;

  ConstructorModel({
    required this.constructorId,
    required this.position,
    required this.name,
    required this.nationality,
    required this.points,
    required this.wins,
    required this.color,
    required this.drivers,
  });

  String get driversName {
    return drivers.map((d) => '${d?.givenName[0]}. ${d?.familyName}').join(' | ');
  }

factory ConstructorModel.fromJson(Map<String, dynamic> json) => _$ConstructorModelFromJson(json);

  Map <String, dynamic> toJson() => _$ConstructorModelToJson(this);
}
