import 'package:http/http.dart' as http;

class Client {
  final http.Client _client = http.Client();

  Future<http.Response> get(String url) async {
    return await _client.get(url as Uri);
  }

  String _response = '';

  List<String> pilotos2 = [];
  List<String> pilotos3 = [];


  Future<void> DataAlbon() async {
    // Perform the asynchronous operation (API call, network request, etc.)
    http.Response response = await http
        .get(Uri.parse('http://ergast.com/api/f1/2023/drivers/max_verstappen.json'));

    // Process the response and update the state

    _response = response.body;
    pilotos2 = _response.split("{");
    pilotos3 = pilotos2[4].split(",");
    String pilotos = ('Response body: $_response');
    Map<String, String> mapa = new Map<String,String>();
    mapa["driverId"]=pilotos3[0].split(":")[1];
    mapa["permanentNumber"]=pilotos3[1].split(":")[1];
    mapa["code"]=pilotos3[2].split(":")[1];
    mapa["url"]=pilotos3[3].split("\":")[1];
    mapa["givenName"]=pilotos3[4].split(":")[1];
    mapa["familyName"]=pilotos3[5].split(":")[1];
    mapa["dateOfBirth"]=pilotos3[6].split(":")[1];
    mapa["nationality"]=pilotos3[7].split(":")[1];

  }

  Future<void> DataBahrein() async {
    // Perform the asynchronous operation (API call, network request, etc.)
    http.Response response = await http
        .get(Uri.parse('http://ergast.com/api/f1/2023/circuits/bahrain.json'));

    // Process the response and update the state

    _response = response.body;
    pilotos2 = _response.split("{");
    pilotos3 = pilotos2[4].split(",");
    String pilotos = ('Response body: $_response');

    Map<String, String> mapa = new Map<String,String>();
    mapa["circuitId"]=pilotos3[0].split(":")[1];
    mapa["url"]=pilotos3[1].split("\":")[1];
    mapa["circuitName"]=pilotos3[2].split(":")[1];
    mapa["lat"] = pilotos2[5].split(":")[1].substring(0,pilotos2[5].split(":")[1].indexOf(","));
    mapa["long"] = pilotos2[5].split(":")[2].substring(0,pilotos2[5].split(":")[2].indexOf(","));
    mapa["locality"] = pilotos2[5].split(":")[3].substring(0,pilotos2[5].split(":")[3].indexOf(","));
    mapa["country"] = pilotos2[5].split(":")[4].substring(0,pilotos2[5].split(":")[4].indexOf("}"));

    print(mapa);
  }

  Future<Map<String, String>> DataRedBull() async {
    // Perform the asynchronous operation (API call, network request, etc.)
    http.Response response = await http
        .get(Uri.parse('http://ergast.com/api/f1/2023/constructors/red_bull.json'));

    // Process the response and update the state

    _response = response.body;
    pilotos2 = _response.split("{");
    pilotos3 = pilotos2[4].split(",");
    String pilotos = ('Response body: $_response');

    Map<String, String> mapa = new Map<String,String>();
    mapa["constructorId"]=pilotos3[0].split(":")[1];
    mapa["url"]=pilotos3[1].split("\":")[1];
    mapa["name"]=pilotos3[2].split(":")[1];
    mapa["nationality"]=pilotos3[3].split(":")[1].substring(0,pilotos3[3].split(":")[1].indexOf("}"));

    print (mapa);
    return mapa;
  }
}
