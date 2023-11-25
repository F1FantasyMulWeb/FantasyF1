// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EventModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventModel _$EventModelFromJson(Map<String, dynamic> json) => EventModel(
      date: DateTime.parse(json['date'] as String),
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$EventModelToJson(EventModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
    };
