import 'entityPiloto.dart';

class listaPilotos extends entityPiloto {
  List <entityPiloto> pilotos;

  listaPilotos(
      {required this.pilotos,
        required String driverId,
        required String permanentNumber,
        required String code,
        required String url,
        required String givenName,
        required String familyName,
        required String dateOfBirth,
        required String nationality
      })
      : super(driverId: driverId, permanentNumber: permanentNumber, code: code, url: url, givenName: givenName,
      familyName: familyName, dateOfBirth: dateOfBirth, nationality: nationality);
  Map<String, dynamic> toMap() {
    return {
      'driverId': this.driverId,
      'permanentNumber': this.permanentNumber,
      'code': this.code,
      'url': this.url,
      'givenName': this.givenName,
      'familyName': this.familyName,
      'dateOfBirth': this.dateOfBirth,
      'nationality': this.nationality,
    };
  }
  factory listaPilotos.fromMap(Map<String, dynamic> map) {
    return listaPilotos(
        driverId: map['driverId'] as String,
        permanentNumber: map['permanentNumber'] as String,
        code: map['code'] as String,
        url: map['url'] as String,
        givenName: map['givenName'] as String,
        familyName: map['familyName'] as String,
        dateOfBirth: map['dateOfBirth'] as String,
        nationality: map['nationality'] as String,
        pilotos: []
    );
  }
}
