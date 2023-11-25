import 'package:json_annotation/json_annotation.dart';
part 'TimeModel.g.dart';

@JsonSerializable()
class TimeModel {
  int millis;
  String time;

  TimeModel({
    required this.millis,
    required this.time,
  });

  factory TimeModel.fromJson(Map<String, dynamic> json) => _$TimeModelFromJson(json);

  Map <String, dynamic> toJson() => _$TimeModelToJson(this);
}
