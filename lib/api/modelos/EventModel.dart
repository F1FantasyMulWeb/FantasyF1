import 'package:json_annotation/json_annotation.dart';
part 'EventModel.g.dart';

@JsonSerializable()
class EventModel {
  DateTime date;
  DateTime time;

  EventModel({
    required this.date,
    required this.time,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

  Map <String, dynamic> toJson() => _$EventModelToJson(this);
}
