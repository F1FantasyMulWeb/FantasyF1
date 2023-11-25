// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FastestLapModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FastestLapModel _$FastestLapModelFromJson(Map<String, dynamic> json) =>
    FastestLapModel(
      rank: json['rank'] as int,
      lap: json['lap'] as int,
      time: TimeModel.fromJson(json['time'] as Map<String, dynamic>),
      averageSpeed:
          SpeedModel.fromJson(json['averageSpeed'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FastestLapModelToJson(FastestLapModel instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'lap': instance.lap,
      'time': instance.time,
      'averageSpeed': instance.averageSpeed,
    };
