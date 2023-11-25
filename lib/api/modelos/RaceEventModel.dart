import 'package:fantasyf1/api/modelos/CircuitModel.dart';
import 'package:fantasyf1/api/modelos/EventModel.dart';
import 'package:fantasyf1/api/modelos/QualifyingResultModel.dart';
import 'package:fantasyf1/api/modelos/RaceResultModel.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
part 'RaceEventModel.g.dart';


@JsonSerializable()
class RaceEventModel {
  int round;
  String raceName;
  CircuitModel circuit;
  DateTime date;
  DateTime time;
  EventModel firstPractice;
  EventModel secondPractice;
  EventModel thirdPractice;
  EventModel qualifying;
  EventModel sprint;
  List<RaceResultModel> results;
  List<QualifyingResultModel> qualifyingResults;
  List<RaceResultModel> sprintResults;

  RaceEventModel({
    required this.round,
    required this.raceName,
    required this.circuit,
    required this.date,
    required this.time,
    required this.firstPractice,
    required this.secondPractice,
    required this.thirdPractice,
    required this.qualifying,
    required this.sprint,
    required this.results,
    required this.qualifyingResults,
    required this.sprintResults,
  });

  factory RaceEventModel.fromJson(Map<String, dynamic> json) => _$RaceEventModelFromJson(json);


  Map<String, dynamic> toJson() => _$RaceEventModelToJson(this);
}

