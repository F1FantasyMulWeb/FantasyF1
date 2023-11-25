// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CircuitModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CircuitModel _$CircuitModelFromJson(Map<String, dynamic> json) => CircuitModel(
      circuitId: json['circuitId'] as String,
      circuitName: json['circuitName'] as String,
      raceName: json['raceName'] as String,
      map: json['map'] as String,
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CircuitModelToJson(CircuitModel instance) =>
    <String, dynamic>{
      'circuitId': instance.circuitId,
      'circuitName': instance.circuitName,
      'raceName': instance.raceName,
      'map': instance.map,
      'location': instance.location,
    };
