class entityPiloto {
  final String? driverId,
      permanentNumber,
      code,
      url,
      givenName,
      familyName,
      dateOfBirth,
      nationality;

  entityPiloto({
    required this.driverId,
    required this.permanentNumber,
    required this.code,
    required this.url,
    required this.givenName,
    required this.familyName,
    required this.dateOfBirth,
    required this.nationality,
  });

  factory entityPiloto.fromJson(Map<String, dynamic> json) {
    return entityPiloto(
      driverId: json['driverId'],
      permanentNumber: json['permanentNumber'],
      code: json['code'],
      url: json['url'],
      givenName: json['givenName'],
      familyName: json['familyName'],
      dateOfBirth: json['dateOfBirth'],
      nationality: json['nationality'],
    );
  }

  @override
  String toString() {
    return 'entityPiloto{$driverId, $permanentNumber, $code, $url, $givenName, $familyName, $dateOfBirth, $nationality}';
  }
}
