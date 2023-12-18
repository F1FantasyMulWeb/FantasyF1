import 'dart:convert';
import 'dart:core';
import 'package:fantasyf1/api/entityCircuitos.dart';
import 'package:fantasyf1/api/entityEscudarias.dart';
import 'package:fantasyf1/api/entityPiloto.dart';
import 'package:fantasyf1/api/listaCircuitos.dart';
import 'package:fantasyf1/api/listaEscuderias.dart';
import 'package:fantasyf1/api/listaPilotos.dart';
import 'package:fantasyf1/api/modelo/DriversModel.dart';
import 'package:http/http.dart' as http;

import 'modelo/RaceEventModel.dart';
import 'modelo/RaceScheduleModel.dart';

class Client {
  final http.Client _client = http.Client();

  Future<http.Response> get(String url) async {
    return await _client.get(url as Uri);
  }

  String _response = '';
  List<String> respuesta2 = [];
  List<String> respuesta3 = [];

  Future<entityPiloto?> DataPiloto(String piloto) async {
    http.Response response = await http.get(
        Uri.parse('http://ergast.com/api/f1/2023/drivers/' + piloto + '.json'));

    // Process the response and update the state

    _response = response.body;
    respuesta2 = _response.split("{");
    respuesta3 = respuesta2[4].split(",");
    String pilotos = ('Response body: $_response');
    Map<String, String> mapa = new Map<String, String>();
    mapa["driverId"] = respuesta3[0].split(":")[1];
    mapa["permanentNumber"] = respuesta3[1].split(":")[1];
    mapa["code"] = respuesta3[2].split(":")[1];
    mapa["url"] = respuesta3[3].split("\":")[1];
    mapa["givenName"] = respuesta3[4].split(":")[1];
    mapa["familyName"] = respuesta3[5].split(":")[1];
    mapa["dateOfBirth"] = respuesta3[6].split(":")[1];
    mapa["nationality"] = respuesta3[7].split(":")[1];

    entityPiloto pilotoEntidad = new entityPiloto(
        driverId: mapa["driverId"],
        permanentNumber: mapa["permanentNumber"],
        code: mapa["code"],
        url: mapa["url"],
        givenName: mapa["givenName"],
        familyName: mapa["familyName"],
        dateOfBirth: mapa["dateOfBirth"],
        nationality: mapa["nationality"]);

    return pilotoEntidad;
  }

  Future<ListaPilotos> rellenaListaPilotos() async {
    ListaPilotos listaPiloto = await new ListaPilotos();

    List<String> pilotosLista = [
      "albon",
      "alonso",
      "bottas",
      "de_vries",
      "gasly",
      "hamilton",
      "hulkenberg",
      "lawson",
      "leclerc",
      "kevin_magnussen",
      "norris",
      "ocon",
      "perez",
      "piastri",
      "ricciardo",
      "russell",
      "sainz",
      "sargeant",
      "stroll",
      "tsunoda",
      "max_verstappen"
    ];

    for (int i = 0; i < pilotosLista.length; i++) {
      entityPiloto ep = await DataPiloto(pilotosLista[i]) as entityPiloto;
      listaPiloto.addPiloto(ep);
    }
    return listaPiloto;
  }

  Future<entityCircuitos> DataCircuito(String circuito) async {
    ListaCircuitos lc = new ListaCircuitos();

    http.Response response = await http.get(Uri.parse(
        'http://ergast.com/api/f1/2023/circuits/' + circuito + '.json'));

    _response = response.body;
    respuesta2 = _response.split("{");
    respuesta3 = respuesta2[4].split(",");
    String pilotos = ('Response body: $_response');

    Map<String, String> mapa = new Map<String, String>();
    mapa["circuitId"] = respuesta3[0].split(":")[1];
    mapa["url"] = respuesta3[1].split("\":")[1];
    mapa["circuitName"] = respuesta3[2].split(":")[1];
    mapa["lat"] = respuesta2[5]
        .split(":")[1]
        .substring(0, respuesta2[5].split(":")[1].indexOf(","));
    mapa["long"] = respuesta2[5]
        .split(":")[2]
        .substring(0, respuesta2[5].split(":")[2].indexOf(","));
    mapa["locality"] = respuesta2[5]
        .split(":")[3]
        .substring(0, respuesta2[5].split(":")[3].indexOf(","));
    mapa["country"] = respuesta2[5]
        .split(":")[4]
        .substring(0, respuesta2[5].split(":")[4].indexOf("}"));
    entityCircuitos ec = new entityCircuitos(
        circuitId: mapa["circuitId"],
        url: mapa["url"],
        circuitName: mapa["circuitName"],
        lat: mapa["lat"],
        long: mapa["long"],
        locality: mapa["locality"],
        country: mapa["country"]);
    return ec;
  }

  Future<ListaCircuitos> rellenaListaCircuito() async {
    ListaCircuitos listaCircuito = new ListaCircuitos();

    List<String> circuitoLista = [
      "albert_park",
      "americas",
      "bahrain",
      "baku",
      "catalunya",
      "hungaroring",
      "interlagos",
      "jeddah",
      "losail",
      "marina_bay",
      "miami",
      "monaco",
      "monza",
      "red_bull_ring",
      "rodriguez",
      "silverstone",
      "spa",
      "suzuka",
      "vegas",
      "villeneuve",
      "yas_marina",
      "zandvoort"
    ];

    for (int i = 0; i < circuitoLista.length; i++) {
      entityCircuitos ec = await DataCircuito(circuitoLista[i]);
      listaCircuito.addCircuito(ec);
    }
    return listaCircuito;
  }

  Future<entityEscudarias> DataEscuderia(String escuderia) async {
    ListaEscuderias le =
        new ListaEscuderias(); // Perform the asynchronous operation (API call, network request, etc.)
    http.Response response = await http.get(Uri.parse(
        'http://ergast.com/api/f1/2023/constructors/' + escuderia + '.json'));

    _response = response.body;
    respuesta2 = _response.split("{");
    respuesta3 = respuesta2[4].split(",");
    String pilotos = ('Response body: $_response');

    Map<String, String> mapa = new Map<String, String>();
    mapa["constructorId"] = respuesta3[0].split(":")[1];
    mapa["url"] = respuesta3[1].split("\":")[1];
    mapa["name"] = respuesta3[2].split(":")[1];
    mapa["nationality"] = respuesta3[3]
        .split(":")[1]
        .substring(0, respuesta3[3].split(":")[1].indexOf("}"));
    entityEscudarias ee = new entityEscudarias(
        constructorId: mapa["constructorId"],
        url: mapa["url"],
        name: mapa["name"],
        nationality: mapa["nationality"]);
    return ee;
  }

  Future<ListaEscuderias> rellenaListaEscuderia() async {
    ListaEscuderias listaEscuderia = new ListaEscuderias();

    List<String> escuderiaLista = [
      "alfa",
      "alphatauri",
      "alpine",
      "aston_martin",
      "ferrari",
      "haas",
      "mclaren",
      "mercedes",
      "red_bull",
      "williams"
    ];

    for (int i = 0; i < escuderiaLista.length; i++) {
      entityEscudarias ec = await DataEscuderia(escuderiaLista[i]);
      listaEscuderia.addEscuderia(ec);
    }
    return listaEscuderia;
  }

  Future<RaceEventModel?> getResults(String year, String round, String raceType,
      {String? queryParams}) async {
    try {
      var response = await http.get(Uri.parse(
          'https://ergast.com/api/f1/$year/$round/$raceType.json?$queryParams'));
      if (response.statusCode == 200) {
        var result = response.body;

        var json = jsonDecode(result);

        // var res = jsonEncode(json["MRData"]["RaceTable"]["Races"]);

        try {
          var r = RaceEventModel.fromJson(json);
        } catch (e) {
          print('Failed to parse JSON: $e');
          print('JSON String: $json');
        }
        final r = RaceEventModel.fromJson(json);
        return r;
      }
    } catch (ex) {
      print(ex);
      return null;
    }
    return null;
  }

  Future<DriversModel?> getDrivers(String year, {String? queryParams}) async {
    try {
      var response = await http.get(Uri.parse(
          'https://ergast.com/api/f1/$year/drivers.json?$queryParams'));
      if (response.statusCode == 200) {
        var result = response.body;

        var json = jsonDecode(result);

        // var res = jsonEncode(json["MRData"]["RaceTable"]["Races"]);

        try {
          var r = DriversModel.fromJson(json);
        } catch (e) {
          print('Failed to parse JSON: $e');
          print('JSON String: $json');
        }
        final r = DriversModel.fromJson(json);
        return r;
      }
    } catch (ex) {
      print(ex);
      return null;
    }
    return null;
  }

  Future<RaceScheduleModel?> getRaces(String year,
      {String? queryParams}) async {
    try {
      var response = await http.get(Uri.parse(
          'https://ergast.com/api/f1/$year/circuits.json?$queryParams'));
      if (response.statusCode == 200) {
        var result = response.body;

        var json = jsonDecode(result);

        // var res = jsonEncode(json["MRData"]["RaceTable"]["Races"]);

        try {
          var r = RaceScheduleModel.fromJson(json);
        } catch (e) {
          print('Failed to parse JSON: $e');
          print('JSON String: $json');
        }
        final r = RaceScheduleModel.fromJson(json);
        return r;
      }
    } catch (ex) {
      print(ex);
      return null;
    }
    return null;
  }
}
