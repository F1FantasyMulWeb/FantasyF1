import 'dart:io';

import 'package:fantasyf1/DataBase/supabaseservice.dart';
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

  Future<bool> sendData(String email, String nombre) async {
    final response = await client.from('UsuarioApp').insert([
      {'userName': nombre, 'correo': email}
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
        'contraseñaGrupo': contrasenaUsuario
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
        'Dinero': 0,
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

  Future<bool> sendDataUsuarioGrupo(var keyGrupo, var password) async {
    int idUsuario = await selectUserId();
    List<dynamic> response2 =
        await client.from('Grupos').select().eq('keyGrupo', keyGrupo);
    if (response2[0]["contraseñaGrupo"] == password) {
      final response3 = await client.from('UsuarioAppGrupo').insert([
        {
          'idUsuario': idUsuario,
          'idGrupo': response2[0]["idGrupo"],
          'Dinero': 0,
          'esAdmin': false,
          'Victorias': 0,
          'Puntos': 0
        }
      ]);
      return true;
    }else{
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

  Future<List<String>> selectMisGruposName() async {
    List<int> idGrupos = [];
    List<String> nombreGrupos = [];
    int idGrupo;
    int idUsuario = await selectUserId();
    List<dynamic> response3;
    List<dynamic> response2 = await client
        .from('UsuarioAppGrupo')
        .select()
        .eq('idUsuario', idUsuario);
    for (var i = 0; i < response2.length; i++) {
      idGrupos.add(response2[i]["idGrupo"]);
    }
    for (var i = 0; i < idGrupos.length; i++) {
      try {
        idGrupo = idGrupos[i];
        response3 = await client.from('Grupos').select().eq('idGrupo', idGrupo);
        nombreGrupos.add(response3[0]["nombreGrupo"]);
      } catch (e) {
        return [];
      }
    }
    if (nombreGrupos.isEmpty) {
      return [];
    } else {
      return nombreGrupos;
    }
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
    final response =
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

}
