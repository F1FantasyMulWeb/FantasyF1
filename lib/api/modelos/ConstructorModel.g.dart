// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ConstructorModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstructorModel _$ConstructorModelFromJson(Map<String, dynamic> json) =>
    ConstructorModel(
      constructorId: json['constructorId'] as String,
      position: json['position'] as int,
      name: json['name'] as String,
      nationality: json['nationality'] as String,
      points: (json['points'] as num).toDouble(),
      wins: json['wins'] as int,
      color: json['color'] as String,
      drivers: (json['drivers'] as List<dynamic>)
          .map((e) => DriverModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConstructorModelToJson(ConstructorModel instance) =>
    <String, dynamic>{
      'constructorId': instance.constructorId,
      'position': instance.position,
      'name': instance.name,
      'nationality': instance.nationality,
      'points': instance.points,
      'wins': instance.wins,
      'color': instance.color,
      'drivers': instance.drivers,
    };
