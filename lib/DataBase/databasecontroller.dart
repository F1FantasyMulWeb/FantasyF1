import 'package:supabase/supabase.dart';

class DataBaseController {
  final SupabaseClient client;

  DataBaseController(this.client);

  Future<void> sendData(String email, String nombre) async {
    final response = await client.from('UsuarioApp').insert([
      {'userName': nombre, 'correo': email}
    ]);

    if (response.error != null) {
      print('Error: ${response.error!.message}');
    } else {
      print('Success: ${response.data}');
    }
  }
}