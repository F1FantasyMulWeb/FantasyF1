// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'SpeedModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeedModel _$SpeedModelFromJson(Map<String, dynamic> json) => SpeedModel(
      units: json['units'] as String,
      speed: (json['speed'] as num).toDouble(),
    );

Map<String, dynamic> _$SpeedModelToJson(SpeedModel instance) =>
    <String, dynamic>{
      'units': instance.units,
      'speed': instance.speed,
    };
