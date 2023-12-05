import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;

class Usuario {
  final String nombreUsuario;
  final String urlImagen;

  Usuario({required this.nombreUsuario, required this.urlImagen});

  // Método para crear un usuario vacío
  Usuario.vacio()
      : nombreUsuario = '',
        urlImagen = '';
}

class UsuarioState extends StateNotifier<Usuario> {
  SupabaseClient? cliente;

  UsuarioState() : super(Usuario.vacio());

  void asignarCliente(SupabaseClient cliente) {
    this.cliente = cliente;
  }

  Future<Usuario> cargarDatos() async {
    if (cliente == null) {
      throw Exception('Cliente no asignado');

    }

    // Carga los datos del usuario desde la base de datos
    final nombreUsuario = await selectUserName(cliente!);
    final urlImagen = await downloadAvatar(cliente!,nombreUsuario);

    print("kebab");

    // Crea un nuevo objeto Usuario con los datos cargados
    final usuario = Usuario(
      nombreUsuario: nombreUsuario,
      urlImagen: urlImagen.path,
    );
    print("kebab2");

    // Actualiza el estado con el nuevo objeto Usuario
    state = usuario;
    print("kebab3");

    // Devuelve el nuevo objeto Usuario
    return usuario;
  }
}

final usuarioProvider = StateNotifierProvider<UsuarioState, Usuario>((ref) => UsuarioState());

Future<String> selectUserName(SupabaseClient cliente) async {
  final correo = cliente.auth.currentUser!.email;
  List<dynamic> response =
  await cliente.from('UsuarioApp').select("userName").eq('correo', correo);

  if (response.isEmpty) {
    return "?????";
  } else {
    return response[0]["userName"];
  }
}

Future<File> downloadAvatar(SupabaseClient client, String nombreUsuario) async {
  String url = 'UserData/nombreUsuario/ImagenAvatar.jpg';

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
  final file = File('${userDirectory.path}/nombreUsuario.jpg');
  // Si el archivo ya existe, bórralo
  if (await file.exists()) {
    await file.delete();
  }
  // Escribe los bytes de la respuesta en el archivo
  await file.writeAsBytes(response.bodyBytes);

  return file;
}