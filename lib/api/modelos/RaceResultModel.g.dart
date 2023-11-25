// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RaceResultModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RaceResultModel _$RaceResultModelFromJson(Map<String, dynamic> json) =>
    RaceResultModel(
      number: json['number'] as int,
      position: json['position'] as int,
      points: (json['points'] as num).toDouble(),
      grid: json['grid'] as int,
      laps: json['laps'] as int,
      status: json['status'] as String,
      driver: DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      constructor: ConstructorModel.fromJson(
          json['constructor'] as Map<String, dynamic>),
      time: TimeModel.fromJson(json['time'] as Map<String, dynamic>),
      fastestLap:
          FastestLapModel.fromJson(json['fastestLap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RaceResultModelToJson(RaceResultModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'position': instance.position,
      'points': instance.points,
      'grid': instance.grid,
      'laps': instance.laps,
      'status': instance.status,
      'driver': instance.driver,
      'constructor': instance.constructor,
      'time': instance.time,
      'fastestLap': instance.fastestLap,
    };
