/*@JsonSerializable()
class RaceScheduleModel {
  @JsonKey(name: "MRData")
  MrData mrData;

  Welcome({
    required this.mrData,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) =>
      _$WelcomeFromJson(json);

  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}

@JsonSerializable()
class MrData {
  @JsonKey(name: "xmlns")
  String xmlns;
  @JsonKey(name: "series")
  String series;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "limit")
  String limit;
  @JsonKey(name: "offset")
  String offset;
  @JsonKey(name: "total")
  String total;
  @JsonKey(name: "RaceTable")
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

  factory MrData.fromJson(Map<String, dynamic> json) => _$MrDataFromJson(json);

  Map<String, dynamic> toJson() => _$MrDataToJson(this);
}

@JsonSerializable()
class RaceTable {
  @JsonKey(name: "season")
  String season;
  @JsonKey(name: "Races")
  List<Race> races;

  RaceTable({
    required this.season,
    required this.races,
  });

  factory RaceTable.fromJson(Map<String, dynamic> json) =>
      _$RaceTableFromJson(json);

  Map<String, dynamic> toJson() => _$RaceTableToJson(this);
}

@JsonSerializable()
class Race {
  @JsonKey(name: "season")
  String season;
  @JsonKey(name: "round")
  String round;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "raceName")
  String raceName;
  @JsonKey(name: "Circuit")
  Circuit circuit;
  @JsonKey(name: "date")
  DateTime date;
  @JsonKey(name: "time")
  String time;
  @JsonKey(name: "FirstPractice")
  FirstPractice firstPractice;
  @JsonKey(name: "SecondPractice")
  FirstPractice secondPractice;
  @JsonKey(name: "ThirdPractice")
  FirstPractice? thirdPractice;
  @JsonKey(name: "Qualifying")
  FirstPractice qualifying;
  @JsonKey(name: "Sprint")
  FirstPractice? sprint;

  Race({
    required this.season,
    required this.round,
    required this.url,
    required this.raceName,
    required this.circuit,
    required this.date,
    required this.time,
    required this.firstPractice,
    required this.secondPractice,
    this.thirdPractice,
    required this.qualifying,
    this.sprint,
  });

  factory Race.fromJson(Map<String, dynamic> json) => _$RaceFromJson(json);

  Map<String, dynamic> toJson() => _$RaceToJson(this);
}

@JsonSerializable()
class Circuit {
  @JsonKey(name: "circuitId")
  String circuitId;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "circuitName")
  String circuitName;
  @JsonKey(name: "Location")
  Location location;

  Circuit({
    required this.circuitId,
    required this.url,
    required this.circuitName,
    required this.location,
  });

  factory Circuit.fromJson(Map<String, dynamic> json) =>
      _$CircuitFromJson(json);

  Map<String, dynamic> toJson() => _$CircuitToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "lat")
  String lat;
  @JsonKey(name: "long")
  String long;
  @JsonKey(name: "locality")
  String locality;
  @JsonKey(name: "country")
  String country;

  Location({
    required this.lat,
    required this.long,
    required this.locality,
    required this.country,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class FirstPractice {
  @JsonKey(name: "date")
  DateTime date;
  @JsonKey(name: "time")
  String time;

  FirstPractice({
    required this.date,
    required this.time,
  });

  factory FirstPractice.fromJson(Map<String, dynamic> json) =>
      _$FirstPracticeFromJson(json);

  Map<String, dynamic> toJson() => _$FirstPracticeToJson(this);
}*/
