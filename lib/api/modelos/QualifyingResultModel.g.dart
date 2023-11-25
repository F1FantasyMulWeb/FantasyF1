// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QualifyingResultModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QualifyingResultModel _$QualifyingResultModelFromJson(
        Map<String, dynamic> json) =>
    QualifyingResultModel(
      number: json['number'] as int,
      position: json['position'] as int,
      driver: DriverModel.fromJson(json['driver'] as Map<String, dynamic>),
      constructor: ConstructorModel.fromJson(
          json['constructor'] as Map<String, dynamic>),
      q1: json['q1'] as String,
      q2: json['q2'] as String,
      q3: json['q3'] as String,
    );

Map<String, dynamic> _$QualifyingResultModelToJson(
        QualifyingResultModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'position': instance.position,
      'driver': instance.driver,
      'constructor': instance.constructor,
      'q1': instance.q1,
      'q2': instance.q2,
      'q3': instance.q3,
    };
