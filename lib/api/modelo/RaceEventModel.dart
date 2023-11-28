// To parse this JSON data, do
//
//     final raceEventModel = raceEventModelFromJson(jsonString);

import 'dart:convert';

RaceEventModel raceEventModelFromJson(String str) =>
    RaceEventModel.fromJson(json.decode(str));

String raceEventModelToJson(RaceEventModel data) => json.encode(data.toJson());

class RaceEventModel {
  MrData mrData;

  RaceEventModel({
    required this.mrData,
  });

  factory RaceEventModel.fromJson(Map<String, dynamic> json) => RaceEventModel(
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
  RaceTable raceTable;

  MrData({
    required this.xmlns,
    required this.series,
    required this.url,
    required this.limit,
    required this.offset,
    required this.total,
    required this.raceTable,
  });

  factory MrData.fromJson(Map<String, dynamic> json) => MrData(
        xmlns: json["xmlns"],
        series: json["series"],
        url: json["url"],
        limit: json["limit"],
        offset: json["offset"],
        total: json["total"],
        raceTable: RaceTable.fromJson(json["RaceTable"]),
      );

  Map<String, dynamic> toJson() => {
        "xmlns": xmlns,
        "series": series,
        "url": url,
        "limit": limit,
        "offset": offset,
        "total": total,
        "RaceTable": raceTable.toJson(),
      };
}

class RaceTable {
  String season;
  String round;
  List<Race> races;

  RaceTable({
    required this.season,
    required this.round,
    required this.races,
  });

  factory RaceTable.fromJson(Map<String, dynamic> json) => RaceTable(
        season: json["season"],
        round: json["round"],
        races: List<Race>.from(json["Races"].map((x) => Race.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "season": season,
        "round": round,
        "Races": List<dynamic>.from(races.map((x) => x.toJson())),
      };
}

class Race {
  String season;
  String round;
  String url;
  String raceName;
  Circuit circuit;
  DateTime date;
  String time;
  List<Result> results;

  Race({
    required this.season,
    required this.round,
    required this.url,
    required this.raceName,
    required this.circuit,
    required this.date,
    required this.time,
    required this.results,
  });

  factory Race.fromJson(Map<String, dynamic> json) => Race(
        season: json["season"],
        round: json["round"],
        url: json["url"],
        raceName: json["raceName"],
        circuit: Circuit.fromJson(json["Circuit"]),
        date: DateTime.parse(json["date"]),
        time: json["time"],
        results:
            List<Result>.from(json["Results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "season": season,
        "round": round,
        "url": url,
        "raceName": raceName,
        "Circuit": circuit.toJson(),
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "time": time,
        "Results": List<dynamic>.from(results.map((x) => x.toJson())),
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

class Result {
  String number;
  String position;
  String positionText;
  String points;
  Driver driver;
  Constructor constructor;
  String grid;
  String laps;
  Status status;
  ResultTime? time;
  FastestLap fastestLap;

  Result({
    required this.number,
    required this.position,
    required this.positionText,
    required this.points,
    required this.driver,
    required this.constructor,
    required this.grid,
    required this.laps,
    required this.status,
    this.time,
    required this.fastestLap,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        number: json["number"],
        position: json["position"],
        positionText: json["positionText"],
        points: json["points"],
        driver: Driver.fromJson(json["Driver"]),
        constructor: Constructor.fromJson(json["Constructor"]),
        grid: json["grid"],
        laps: json["laps"],
        status: statusValues.map[json["status"]]!,
        time: json["Time"] == null ? null : ResultTime.fromJson(json["Time"]),
        fastestLap: FastestLap.fromJson(json["FastestLap"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "position": position,
        "positionText": positionText,
        "points": points,
        "Driver": driver.toJson(),
        "Constructor": constructor.toJson(),
        "grid": grid,
        "laps": laps,
        "status": statusValues.reverse[status],
        "Time": time?.toJson(),
        "FastestLap": fastestLap.toJson(),
      };
}

class Constructor {
  String constructorId;
  String url;
  String name;
  String nationality;

  Constructor({
    required this.constructorId,
    required this.url,
    required this.name,
    required this.nationality,
  });

  factory Constructor.fromJson(Map<String, dynamic> json) => Constructor(
        constructorId: json["constructorId"],
        url: json["url"],
        name: json["name"],
        nationality: json["nationality"],
      );

  Map<String, dynamic> toJson() => {
        "constructorId": constructorId,
        "url": url,
        "name": name,
        "nationality": nationality,
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
  String? img;

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

  Driver.img(this.driverId, this.permanentNumber, this.code, this.url,
      this.givenName, this.familyName, this.dateOfBirth, this.nationality)
      : this.img = "img_$driverId";

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

class FastestLap {
  String rank;
  String lap;
  FastestLapTime time;
  AverageSpeed averageSpeed;

  FastestLap({
    required this.rank,
    required this.lap,
    required this.time,
    required this.averageSpeed,
  });

  factory FastestLap.fromJson(Map<String, dynamic> json) => FastestLap(
        rank: json["rank"],
        lap: json["lap"],
        time: FastestLapTime.fromJson(json["Time"]),
        averageSpeed: AverageSpeed.fromJson(json["AverageSpeed"]),
      );

  Map<String, dynamic> toJson() => {
        "rank": rank,
        "lap": lap,
        "Time": time.toJson(),
        "AverageSpeed": averageSpeed.toJson(),
      };
}

class AverageSpeed {
  Units units;
  String speed;

  AverageSpeed({
    required this.units,
    required this.speed,
  });

  factory AverageSpeed.fromJson(Map<String, dynamic> json) => AverageSpeed(
        units: unitsValues.map[json["units"]]!,
        speed: json["speed"],
      );

  Map<String, dynamic> toJson() => {
        "units": unitsValues.reverse[units],
        "speed": speed,
      };
}

enum Units { KPH }

final unitsValues = EnumValues({"kph": Units.KPH});

class FastestLapTime {
  String time;

  FastestLapTime({
    required this.time,
  });

  factory FastestLapTime.fromJson(Map<String, dynamic> json) => FastestLapTime(
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
      };
}

enum Status { FINISHED, POWER_LOSS, THE_1_LAP }

final statusValues = EnumValues({
  "Finished": Status.FINISHED,
  "Power loss": Status.POWER_LOSS,
  "+1 Lap": Status.THE_1_LAP
});

class ResultTime {
  String millis;
  String time;

  ResultTime({
    required this.millis,
    required this.time,
  });

  factory ResultTime.fromJson(Map<String, dynamic> json) => ResultTime(
        millis: json["millis"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "millis": millis,
        "time": time,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
