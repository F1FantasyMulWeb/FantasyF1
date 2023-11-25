import 'package:fantasyf1/api/modelos/SpeedModel.dart';
import 'package:fantasyf1/api/modelos/TimeModel.dart';
import 'package:json_annotation/json_annotation.dart';
part 'FastestLapModel.g.dart';

@JsonSerializable()
class FastestLapModel {
  int rank;
  int lap;
  TimeModel time;
  SpeedModel averageSpeed;

  FastestLapModel({
    required this.rank,
    required this.lap,
    required this.time,
    required this.averageSpeed,
  });

  factory FastestLapModel.fromJson(Map<String, dynamic> json) => _$FastestLapModelFromJson(json);

  Map <String, dynamic> toJson() => _$FastestLapModelToJson(this);
}
