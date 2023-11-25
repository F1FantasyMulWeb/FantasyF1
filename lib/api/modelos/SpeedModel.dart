import 'package:json_annotation/json_annotation.dart';
part 'SpeedModel.g.dart';


@JsonSerializable()
class SpeedModel {
  String units;
  double speed;

  SpeedModel({required this.units, required this.speed});

  factory SpeedModel.fromJson(Map<String, dynamic> json) => _$SpeedModelFromJson(json);

  Map <String, dynamic> toJson() => _$SpeedModelToJson(this);
}
