// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RaceEventModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceEventModel _$RaceEventModelFromJson(Map<String, dynamic> json) =>
    RaceEventModel(
      round: json['round'] as int,
      raceName: json['raceName'] as String,
      circuit: CircuitModel.fromJson(json['circuit'] as Map<String, dynamic>),
      date: DateTime.parse(json['date'] as String),
      time: DateTime.parse(json['time'] as String),
      firstPractice:
          EventModel.fromJson(json['firstPractice'] as Map<String, dynamic>),
      secondPractice:
          EventModel.fromJson(json['secondPractice'] as Map<String, dynamic>),
      thirdPractice:
          EventModel.fromJson(json['thirdPractice'] as Map<String, dynamic>),
      qualifying:
          EventModel.fromJson(json['qualifying'] as Map<String, dynamic>),
      sprint: EventModel.fromJson(json['sprint'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => RaceResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualifyingResults: (json['qualifyingResults'] as List<dynamic>)
          .map((e) => QualifyingResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprintResults: (json['sprintResults'] as List<dynamic>)
          .map((e) => RaceResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RaceEventModelToJson(RaceEventModel instance) =>
    <String, dynamic>{
      'round': instance.round,
      'raceName': instance.raceName,
      'circuit': instance.circuit,
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'firstPractice': instance.firstPractice,
      'secondPractice': instance.secondPractice,
      'thirdPractice': instance.thirdPractice,
      'qualifying': instance.qualifying,
      'sprint': instance.sprint,
      'results': instance.results,
      'qualifyingResults': instance.qualifyingResults,
      'sprintResults': instance.sprintResults,
    };
