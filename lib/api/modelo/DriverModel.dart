import 'dart:convert';

DriverModel driverModelFromMap(String str) =>
    DriverModel.fromMap(json.decode(str));

String driverModelToMap(DriverModel data) => json.encode(data.toMap());

class DriverModel {
  MrData mrData;

  DriverModel({
    required this.mrData,
  });

  factory DriverModel.fromMap(Map<String, dynamic> json) => DriverModel(
        mrData: MrData.fromMap(json["MRData"]),
      );

  Map<String, dynamic> toMap() => {
        "MRData": mrData.toMap(),
      };
}

class MrData {
  String xmlns;
  String series;
  String url;
  String limit;
  String offset;
  String total;
  DriverTable driverTable;

  MrData({
    required this.xmlns,
    required this.series,
    required this.url,
    required this.limit,
    required this.offset,
    required this.total,
    required this.driverTable,
  });

  factory MrData.fromMap(Map<String, dynamic> json) => MrData(
        xmlns: json["xmlns"],
        series: json["series"],
        url: json["url"],
        limit: json["limit"],
        offset: json["offset"],
        total: json["total"],
        driverTable: DriverTable.fromMap(json["DriverTable"]),
      );

  Map<String, dynamic> toMap() => {
        "xmlns": xmlns,
        "series": series,
        "url": url,
        "limit": limit,
        "offset": offset,
        "total": total,
        "DriverTable": driverTable.toMap(),
      };
}

class DriverTable {
  String driverId;
  List<Driver> drivers;

  DriverTable({
    required this.driverId,
    required this.drivers,
  });

  factory DriverTable.fromMap(Map<String, dynamic> json) => DriverTable(
        driverId: json["driverId"],
        drivers:
            List<Driver>.from(json["Drivers"].map((x) => Driver.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "driverId": driverId,
        "Drivers": List<dynamic>.from(drivers.map((x) => x.toMap())),
      };
}

class Driver {
  String driverId;
  String permanentNumber;
  String code;
  String url;
  String givenName;
  String familyName;
  DateTime dateOfBirth;
  String nationality;

  Driver({
    required this.driverId,
    required this.permanentNumber,
    required this.code,
    required this.url,
    required this.givenName,
    required this.familyName,
    required this.dateOfBirth,
    required this.nationality,
  });

  factory Driver.fromMap(Map<String, dynamic> json) => Driver(
        driverId: json["driverId"],
        permanentNumber: json["permanentNumber"],
        code: json["code"],
        url: json["url"],
        givenName: json["givenName"],
        familyName: json["familyName"],
        dateOfBirth: DateTime.parse(json["dateOfBirth"]),
        nationality: json["nationality"],
      );

  Map<String, dynamic> toMap() => {
        "driverId": driverId,
        "permanentNumber": permanentNumber,
        "code": code,
        "url": url,
        "givenName": givenName,
        "familyName": familyName,
        "dateOfBirth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "nationality": nationality,
      };
}
