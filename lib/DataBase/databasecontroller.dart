import 'package:supabase/supabase.dart';
import 'dart:io';

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
  uploadAvatar(String path) async {
    String userName = await selectUserName();
    String url = 'UserData/$userName/ImagenAvatar.jpg';
    final response = await client.storage.from('F1Fantasy').upload(url,File(path));
    print(response.runtimeType);

  }
}
