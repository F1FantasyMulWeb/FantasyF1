// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DriverModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) => DriverModel(
      driverId: json['driverId'] as String,
      givenName: json['givenName'] as String,
      familyName: json['familyName'] as String,
      nationality: json['nationality'] as String,
      permanentNumber: json['permanentNumber'] as int,
      code: json['code'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
    );

Map<String, dynamic> _$DriverModelToJson(DriverModel instance) =>
    <String, dynamic>{
      'driverId': instance.driverId,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'nationality': instance.nationality,
      'permanentNumber': instance.permanentNumber,
      'code': instance.code,
      'dateOfBirth': instance.dateOfBirth,
    };
