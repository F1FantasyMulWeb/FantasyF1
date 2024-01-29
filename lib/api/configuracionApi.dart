import 'dart:convert';
import 'dart:core';


import 'package:FantasyF1/api/modelo/DriversModel.dart';
import 'package:FantasyF1/api/modelo/singleDriver.dart';
import 'package:http/http.dart' as http;
import 'modelo/singleDriver.dart' as singletonDriver;
import 'modelo/RaceEventModel.dart' hide Driver;
import 'modelo/RaceScheduleModel.dart';

class Client {
  final http.Client _client = http.Client();

  Future<http.Response> get(String url) async {
    return await _client.get(url as Uri);
  }


  List<String> respuesta2 = [];
  List<String> respuesta3 = [];



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

  Future<singletonDriver.Driver?> getDriver(String driverName) async {
    try {
      var response = await http
          .get(Uri.parse('https://ergast.com/api/f1/drivers/$driverName.json'));
      if (response.statusCode == 200) {
        var result = response.body;

        var json = jsonDecode(result);
        //var res = jsonDecode(json["MRData"]["DriverTable"]["Drivers"]);
        print(json.toString());
        try {
          var r = singleDriver.fromJson(json);
        } catch (e) {
          print('Failed to parse JSON: $e');
          print('JSON String: $json');
        }
        final r = singleDriver.fromJson(json);

        //print(r.mrData.driverTable.toString());
        return r.mrData.driverTable.drivers.first;
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
