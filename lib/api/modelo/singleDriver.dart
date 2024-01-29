import 'dart:convert';

class singleDriver {
  MrData mrData;

  singleDriver driversModelFromJson(String str) =>
      singleDriver.fromJson(json.decode(str));

  String driversModelToJson(singleDriver data) => json.encode(data.toJson());

  singleDriver({
    required this.mrData,
  });
  factory singleDriver.fromJson(Map<String, dynamic> json) => singleDriver(
    mrData: MrData.fromJson(json["MRData"]),
  );

  Map<String, dynamic> toJson() => {
    "MRData": mrData.toJson(),
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
  factory MrData.fromJson(Map<String, dynamic> json) => MrData(
    xmlns: json["xmlns"],
    series: json["series"],
    url: json["url"],
    limit: json["limit"],
    offset: json["offset"],
    total: json["total"],
    driverTable: DriverTable.fromJson(json["DriverTable"]),
  );

  Map<String, dynamic> toJson() => {
    "xmlns": xmlns,
    "series": series,
    "url": url,
    "limit": limit,
    "offset": offset,
    "total": total,
    "DriverTable": driverTable.toJson(),
  };
}

class DriverTable {
  String driverId;
  List<Driver> drivers;

  DriverTable({
    required this.driverId,
    required this.drivers,
  });
  factory DriverTable.fromJson(Map<String, dynamic> json) => DriverTable(
    driverId: json["driverId"],
    drivers:
    List<Driver>.from(json["Drivers"].map((x) => Driver.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "driverId": driverId,
    "Drivers": List<dynamic>.from(drivers.map((x) => x.toJson())),
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

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
    driverId: json["driverId"],
    permanentNumber: json["permanentNumber"],
    code: json["code"],
    url: json["url"],
    givenName: json["givenName"],
    familyName: json["familyName"],
    dateOfBirth: DateTime.parse(json["dateOfBirth"]),
    nationality: json["nationality"],
  );

  Map<String, dynamic> toJson() => {
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
