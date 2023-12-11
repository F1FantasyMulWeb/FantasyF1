import 'dart:convert';

RaceScheduleModel raceEventModelFromJson(String str) =>
    RaceScheduleModel.fromJson(json.decode(str));

String raceEventModelToJson(RaceScheduleModel data) =>
    json.encode(data.toJson());

class RaceScheduleModel {
  MrData mrData;

  RaceScheduleModel({
    required this.mrData,
  });
  factory RaceScheduleModel.fromJson(Map<String, dynamic> json) =>
      RaceScheduleModel(
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
  CircuitTable circuitTable;

  MrData({
    required this.xmlns,
    required this.series,
    required this.url,
    required this.limit,
    required this.offset,
    required this.total,
    required this.circuitTable,
  });

  factory MrData.fromJson(Map<String, dynamic> json) => MrData(
        xmlns: json["xmlns"],
        series: json["series"],
        url: json["url"],
        limit: json["limit"],
        offset: json["offset"],
        total: json["total"],
        circuitTable: CircuitTable.fromJson(json["CircuitTable"]),
      );

  Map<String, dynamic> toJson() => {
        "xmlns": xmlns,
        "series": series,
        "url": url,
        "limit": limit,
        "offset": offset,
        "total": total,
        "CircuitTable": circuitTable.toJson(),
      };
}

class CircuitTable {
  String season;
  List<Circuit> circuits;

  CircuitTable({
    required this.season,
    required this.circuits,
  });

  factory CircuitTable.fromJson(Map<String, dynamic> json) => CircuitTable(
        season: json["season"],
        circuits: List<Circuit>.from(
            json["Circuits"].map((x) => Circuit.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "season": season,
        "Circuits": List<dynamic>.from(circuits.map((x) => x.toJson())),
      };
}

class Circuit {
  String circuitId;
  String url;
  String circuitName;
  Location location;

  Circuit({
    required this.circuitId,
    required this.url,
    required this.circuitName,
    required this.location,
  });
  factory Circuit.fromJson(Map<String, dynamic> json) => Circuit(
        circuitId: json["circuitId"],
        url: json["url"],
        circuitName: json["circuitName"],
        location: Location.fromJson(json["Location"]),
      );

  Map<String, dynamic> toJson() => {
        "circuitId": circuitId,
        "url": url,
        "circuitName": circuitName,
        "Location": location.toJson(),
      };
}

class Location {
  String lat;
  String long;
  String locality;
  String country;

  Location({
    required this.lat,
    required this.long,
    required this.locality,
    required this.country,
  });
  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"],
        long: json["long"],
        locality: json["locality"],
        country: json["country"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
        "locality": locality,
        "country": country,
      };
}
