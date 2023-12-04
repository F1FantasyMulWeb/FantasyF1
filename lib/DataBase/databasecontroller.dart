import 'package:supabase/supabase.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

import '../core/utils/image_constant.dart';

class DataBaseController {
  SupabaseClient client;

  DataBaseController(this.client);

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

    try {
      await client.storage.from('F1Fantasy').remove([url]);
    } catch (e) {}

    // Sube el nuevo archivo
    final response =
        await client.storage.from('F1Fantasy').upload(url, File(path));
    downloadAvatarInicio();
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

    // Escribe los bytes de la respuesta en el archivo
    await file.writeAsBytes(response.bodyBytes);

    return file;
  }

  Future<void> downloadAvatarInicio() async {
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
  }



  Future<File> selectAvatarImage() async {
    String userName = await selectUserName();

    // Obtén la ruta del directorio de documentos de la aplicación
    final directory = await getApplicationDocumentsDirectory();

    // Crea una carpeta para los datos del usuario si no existe
    final userDirectory = Directory('${directory.path}/UserData');
    if (!await userDirectory.exists()) {
      await userDirectory.create();
    }

    // Crea un archivo en la carpeta de datos del usuario
    final file = File('${userDirectory.path}/$userName.jpg');

    if (await file.exists()) {
      // Si el archivo existe, devuelve el archivo
      return file;
    } else {
      // Si el archivo no existe, intenta descargarlo
      try {
        await downloadAvatar();
        // Si la descarga es exitosa, devuelve el archivo
        return file;
      } catch (e) {
        // Si la descarga falla, devuelve un archivo con la imagen por defecto
        return File(ImageConstant.imgDownload31x33);
      }
    }
  }
  Future<bool> sendDataGrupo(String nombreUsuario, String contrasenaUsuario) async {
    final response = await client.from('Grupos').insert([
      {'nombreGrupo': nombreUsuario, 'contraseñaGrupo': contrasenaUsuario}
    ]);
    if (response == null) {
      return true;
    } else {
      return false;
    }
  }




}
