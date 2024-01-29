import 'dart:io';

import 'package:FantasyF1/DataBase/supabaseservice.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:supabase/supabase.dart';

import '../core/utils/image_constant.dart';

class DataBaseController {
  static final DataBaseController _singleton = DataBaseController._internal();
  Map<String, dynamic> cache = {};
  final SupabaseClient client = SupabaseService().client;

  factory DataBaseController() {
    return _singleton;
  }

  DataBaseController._internal();

  Future<bool> sendCorreo(String email) async {
    final response = await client.from('UsuarioApp').insert([
      {'correo': email, 'PrimerLogin': false}
    ]);
    if (response == null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendDataGrupo(
      String nombreUsuario, String contrasenaUsuario, var idGrupo) async {
    final response = await client.from('Grupos').insert([
      {
        'keyGrupo': idGrupo,
        'nombreGrupo': nombreUsuario,
        'contraseñaGrupo': contrasenaUsuario,
        'listaPilotosDisponible': [
          "albon",
          "alonso",
          "bottas",
          "de_vries",
          "gasly",
          "hamilton",
          "hulkenberg",
          "kevin_magnussen",
          "lawson",
          "leclerc",
          "max_verstappen",
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
          "zhou"
        ]
      }
    ]);
    if (response == null) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> sendDataAdministradorGrupo(var idGrupo) async {
    int idUsuario = await selectUserId();
    List<dynamic> response2 =
        await client.from('Grupos').select().eq('keyGrupo', idGrupo);
    final response3 = await client.from('UsuarioAppGrupo').insert([
      {
        'idUsuario': idUsuario,
        'idGrupo': response2[0]["idGrupo"],
        'Dinero': 100,
        'esAdmin': true,
        'Victorias': 0,
        'Puntos': 0
      }
    ]);
    if (idUsuario == null || response2 == null || response3 == null) {
      return true;
    } else {
      return false;
    }
  }

  Future<String> selectCodeGroup(String nombreGrupo) async {
    List<dynamic> response =
        await client.from('Grupos').select().eq('nombreGrupo', nombreGrupo);
    if (response.isEmpty) {
      return "?????";
    } else {
      return response[0]["keyGrupo"];
    }
  }

  Future<int> selectIdGroup(String nombreGrupo) async {
    List<dynamic> response =
        await client.from('Grupos').select().eq('nombreGrupo', nombreGrupo);
    if (response.isEmpty) {
      return 0;
    } else {
      return response[0]["idGrupo"];
    }
  }

  Future<bool> sendDataUsuarioGrupo(var keyGrupo, var password) async {
    int idUsuario = await selectUserId();
    List<dynamic> response2 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);
    final passDataBase = response2[0]["contraseñaGrupo"];
    if (passDataBase == password) {
      await client.from('UsuarioAppGrupo').insert([
        {
          'idUsuario': idUsuario,
          'idGrupo': response2[0]["idGrupo"],
          'Dinero': 100,
          'esAdmin': false,
          'Victorias': 0,
          'Puntos': 0
        }
      ]);
      return true;
    } else {
      return false;
    }
  }

  Future<int> selectUserId() async {
    final email = client.auth.currentUser?.email;
    int result;

    if (email == null) {
      return -1;
    }
    if (cache.containsKey(email)) {
      return cache[email];
    }

    List<dynamic> response1 =
        await client.from('UsuarioApp').select('idUsuario').eq('correo', email);
    if (response1.isEmpty) {
      print("Hola Fallo");
      result = -1;
    } else {
      result = response1[0]["idUsuario"];
    }
    print(result.runtimeType);
    cache[email] = result;

    return result;
  }

  Future<Map<String, int>> selectMisGruposName() async {
    Map<String, int> gruposInfo = {};
    List<int> idGrupos = [];
    int idGrupo;
    int idUsuario = await selectUserId();
    List<dynamic> response2 = await client
        .from('UsuarioAppGrupo')
        .select()
        .eq('idUsuario', idUsuario);
    for (var grupo in response2) {
      idGrupos.add(grupo["idGrupo"]);
    }
    for (var i = 0; i < idGrupos.length; i++) {
      try {
        idGrupo = idGrupos[i];
        List<dynamic> responseGrupo =
            await client.from('Grupos').select().eq('idGrupo', idGrupo);
        List<dynamic> responseJugadores = await client
            .from('UsuarioAppGrupo')
            .select()
            .eq('idGrupo', idGrupo);

        int cantidadJugadores = responseJugadores.length;
        String nombreGrupo = responseGrupo[0]["nombreGrupo"];
        gruposInfo[nombreGrupo] = cantidadJugadores;
      } catch (e) {
        return {};
      }
    }
    return gruposInfo;
  }

  Future<bool> checkEmail(String email) async {
    List<dynamic> response =
        await client.from('UsuarioApp').select().eq('correo', email);

    if (response.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<String> selectUserName() async {
    final correo = client.auth.currentUser!.email;
    List<dynamic> response =
        await client.from('UsuarioApp').select("userName").eq('correo', correo);

    if (response.isEmpty) {
      return "?????";
    } else {
      return response[0]["userName"];
    }
  }

  Future<void> uploadAvatar(String path) async {
    String userName = await selectUserName();
    String url = 'UserData/$userName/ImagenAvatar.jpg';

    imageCache.clear();
    try {
      await client.storage.from('F1Fantasy').remove([url]);
    } catch (e) {}

    // Sube el nuevo archivo
    await client.storage.from('F1Fantasy').upload(url, File(path));
    downloadAvatar();
  }

  Future<File> downloadAvatar() async {
    String userName = await selectUserName();
    String url = 'UserData/$userName/ImagenAvatar.jpg';

    // Obtén la URL firmada
    final signedUrl =
        await client.storage.from('F1Fantasy').createSignedUrl(url, 15);

    // Descarga el archivo
    final response = await http.get(Uri.parse(signedUrl));

    // Obtén la ruta del directorio de documentos de la aplicación
    final directory = await getApplicationDocumentsDirectory();

    // Crea una carpeta para los datos del usuario si no existe
    final userDirectory = Directory('${directory.path}/UserData');
    if (!await userDirectory.exists()) {
      await userDirectory.create();
    }

    // Crea un archivo en la carpeta de datos del usuario
    final file = File('${userDirectory.path}/$userName.jpg');
    // Si el archivo ya existe, bórralo
    if (await file.exists()) {
      await file.delete();
    }
    // Escribe los bytes de la respuesta en el archivo
    await file.writeAsBytes(response.bodyBytes);

    return file;
  }

  Future<String> downloadAvatarInicioUser(String userName) async {
    String url = 'UserData/$userName/ImagenAvatar.jpg';

    final signedUrl;
    imageCache.clear();
    try {
      signedUrl =
          await client.storage.from('F1Fantasy').createSignedUrl(url, 15);
    } catch (e) {
      return ImageConstant.imgDownload169x169;
    }

    // Obtén la ruta del directorio de documentos de la aplicación
    final directory = await getApplicationDocumentsDirectory();

    // Crea una carpeta para los datos del usuario si no existe
    final userDirectory = Directory('${directory.path}/UserData');
    if (!await userDirectory.exists()) {
      await userDirectory.create();
    }

    // Crea un archivo en la carpeta de datos del usuario
    final file = File('${userDirectory.path}/$userName.jpg');

    // Comprueba si el archivo ya existe
    if (await file.exists()) {
      // Si el archivo ya existe, simplemente devuelve la ruta del archivo
      return file.path;
    }

    // Si el archivo no existe, descarga el archivo
    final response = await http.get(Uri.parse(signedUrl));

    // Escribe los bytes de la respuesta en el archivo
    await file.writeAsBytes(response.bodyBytes);

    return file.path;
  }

  Future<Map<String, Map<String, dynamic>>> seleccionarInfoJugadores(
      String codeGrupo) async {
    int idGrupo;
    Map<String, int> idUsuarioPuntos = {};
    Map<String, String> nombreUsuarioImagen = {};
    Map<String, Map<String, dynamic>> resultado = {};

    // Obtiene el idGrupo basado en el codeGrupo
    var queryGrupo = client.from('Grupos').select().eq('keyGrupo', codeGrupo);
    var responseGrupo = await queryGrupo;
    idGrupo = responseGrupo[0]["idGrupo"];

    // Obtiene los usuarios del grupo
    var queryUsuarios =
        client.from('UsuarioAppGrupo').select().eq('idGrupo', idGrupo);
    var responseUsuarios = await queryUsuarios;

    // Procesa cada usuario
    for (var usuario in responseUsuarios) {
      int idUsuario = usuario["idUsuario"];
      String nombreUsuario;

      // Obtiene el nombre del usuario
      var queryNombre =
          client.from('UsuarioApp').select().eq('idUsuario', idUsuario);
      var responseNombre = await queryNombre;
      nombreUsuario = responseNombre[0]["userName"];

      // Obtiene los puntos del usuario
      int puntos = await selectPuntosUsuarioGrupo(idUsuario);

      // Obtiene la imagen del usuario
      String imagen = await downloadAvatarInicioUser(nombreUsuario);

      // Almacena la información en las estructuras
      idUsuarioPuntos[nombreUsuario] = puntos;
      nombreUsuarioImagen[nombreUsuario] = imagen;
    }

    // Ordena y combina la información
    var jugadoresPuntosOrdenados = Map.fromEntries(
        idUsuarioPuntos.entries.toList()
          ..sort((e1, e2) => e2.value.compareTo(e1.value)));

    jugadoresPuntosOrdenados.forEach((nombre, puntos) {
      resultado[nombre] = {
        "puntos": puntos,
        "imagen": nombreUsuarioImagen[nombre]
      };
    });

    return resultado;
  }

  Future<int> selectPuntosUsuarioGrupo(var idUsuario) async {
    List<dynamic> response1 = await client
        .from('UsuarioAppGrupo')
        .select()
        .eq('idUsuario', idUsuario);
    return response1[0]["Puntos"];
  }

  Future<int> selectIdDeUsuario(var nombreUsuario) async {
    List<dynamic> response1 =
        await client.from('UsuarioApp').select().eq('userName', nombreUsuario);
    return response1[0]["idUsuario"];
  }

  Future<List<String>> selectPilotosDisponiblesDelGrupo(var keyGrupo) async {
    List<String> nombrePilotos = [];
    final response1 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);

    final listaPilotos = response1[0]["listaPilotosDisponible"];

    for (var i = 0; i < listaPilotos.length; i++) {
      nombrePilotos.add(listaPilotos[i]);
    }

    return nombrePilotos;
  }

  Future<List<Map<String, dynamic>>> selectPilotosDisponiblesDelGrupoConPrecio(
      //Eliminar
      var keyGrupo) async {
    List<Map<String, dynamic>> pilotosConPrecio = [];
    final responseGrupo =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);

    final listaPilotos = responseGrupo[0]["listaPilotosDisponible"];

    print(listaPilotos);
    for (var piloto in listaPilotos) {
      List<dynamic> responsePiloto =
          await client.from('Pilotos').select('Precio').eq('idName', piloto);

      if (responsePiloto.isNotEmpty) {
        pilotosConPrecio
            .add({'nombre': piloto, 'precio': responsePiloto[0]['Precio']});
      }
    }
    print("Como esta");
    print(pilotosConPrecio);

    return pilotosConPrecio;
  }

  Future<bool> comprarPiloto(var idPiloto, var keyGrupo, var dinero) async {
    int idUsuario = await selectUserId();

    List<String> listaPiloto = await selectPilotosDisponiblesDelGrupo(keyGrupo);
    listaPiloto.remove(idPiloto);
    final response1 = await client
        .from('Grupos')
        .update({'listaPilotosDisponible': listaPiloto})
        .eq('keyGrupo', keyGrupo)
        .select();

    List<dynamic> response5 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);

    final response2 = await client.from('PilotosGrupo').insert([
      {
        'idUsuario': idUsuario,
        'idGrupo': response5[0]["idGrupo"],
        'idPiloto': idPiloto,
      }
    ]);

    final response3 = await client
        .from('UsuarioAppGrupo')
        .select()
        .eq('idUsuario', idUsuario)
        .eq('idGrupo', response5[0]["idGrupo"])
        .select();

    final response4 = await client
        .from('UsuarioAppGrupo')
        .update({'Dinero': response3[0]["Dinero"] - dinero})
        .eq('idUsuario', idUsuario)
        .eq('idGrupo', response5[0]["idGrupo"])
        .select();

    if (response1 == null ||
        response2 == null ||
        response3 == null ||
        response4 == null ||
        response5 == null) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<String>> pilotosDeUnUsuarioEnUnGrupo(var keyGrupo) async {
    final response1 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);
    int idUsuario = await selectUserId();
    List<String> listaPilotos = [];
    List<dynamic> response2 = await client
        .from('PilotosGrupo')
        .select()
        .eq('idUsuario', idUsuario)
        .eq('idGrupo', response1[0]["idGrupo"]);
    for (var i = 0; i < response2.length; i++) {
      listaPilotos.add(response2[i]["idPiloto"]);
    }
    print("Esto es lo que hay en la lista de pilotos");
    print(listaPilotos);
    return listaPilotos;
  }

  Future<int> cantidadDePersonasEnUnGrupo(var idGrupo) async {
    List<dynamic> response1 =
        await client.from('UsuarioAppGrupo').select().eq('idGrupo', idGrupo);
    return response1.length;
  }

  Future<int> precioPiloto(String idPiloto) async {
    print(idPiloto);
    final response1 =
        await client.from('Pilotos').select().eq('idName', "de_vries");
    return response1[0]["Precio"];
  }

  Future<int> puntosPiloto(var idPiloto) async {
    List<dynamic> response1 =
        await client.from('Pilotos').select().eq('idName', idPiloto);
    return response1[0]["Puntos"];
  }

  Future<String> nombrePioloto(var idPiloto) async {
    List<dynamic> response1 =
        await client.from('Pilotos').select().eq('idName', idPiloto);
    return response1[0]["Name"];
  }
  Future<String> idPioloto(var nombrePiloto) async {
    List<dynamic> response1 =
    await client.from('Pilotos').select().eq('Name', nombrePiloto);
    return response1[0]["idName"];
  }


  Future<Map<String, List<Object>>> selectPilotosDisponiblesDelGrupo1(
      var keyGrupo) async {
    Map<String, List<Object>> listaPilotosDatos = {};
    List<String> nombrePilotos = [];
    final response1 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);

    List<dynamic> response2;

    final listaPilotos = response1[0]["listaPilotosDisponible"];
    List<String> listaNombres = [];
    List<int> listaPrecios = [];
    List<int> listaPuntos = [];

    for (var i = 0; i < listaPilotos.length; i++) {
      nombrePilotos.add(listaPilotos[i]);
      response2 =
          await client.from('Pilotos').select().eq('idName', listaPilotos[i]);
      listaNombres.add(response2[0]["Name"]);
      listaPrecios.add(response2[0]["Precio"]);
      listaPuntos.add(response2[0]["Puntos"]);
      listaPilotosDatos[listaPilotos[i]] = [
        listaNombres[i],
        listaPrecios[i],
        listaPuntos[i]
      ];
    }
    return listaPilotosDatos;
  }

  Future<void> actualizarPrimerLoginDatos(String userName) async {
    final email =client.auth.currentUser?.email;
    await client.from('UsuarioApp').update(
        {'PrimerLogin': true, 'userName': userName}).eq('correo', email);
  }

  Future<bool> verificarNombreUsuarioDisponible(String userName) async {
    List<dynamic> response =
        await client.from('UsuarioApp').select().eq('userName', userName);
    print(response.isNotEmpty);
    return response.isNotEmpty;
  }

  Future<bool> verificarPrimerLogin(String email) async {
    List<dynamic> response = await client
        .from('UsuarioApp')
        .select('PrimerLogin')
        .eq('correo', email);

    if (response.isEmpty) {
      return false;
    } else {
      return response[0]["PrimerLogin"];
    }
  }
}
