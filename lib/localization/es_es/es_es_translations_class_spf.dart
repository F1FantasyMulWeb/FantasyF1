class es_es_translations_class_spf {
  final Map<String, String> translations = {
    //FormValidator
    "msg_error_email": "Email inválido",
    "msg_error_password": "Contraseña vacía",
    "msg_error_user": "Usuario vacío",
    "msg_error_pass_min": "Contraseña muy cortam min 10 caracteres",
    "msg_error_pass_may": "Falta letra mayúscula",
    "msg_error_pass_num": "Falta un número",
    "msg_error_pass_caraspec": "Falta carácter especial",
    "msg_error_pass_space": "No se permiten espacios",
    "msg_error_passwords_do_not_match" : "Las contraseñas no coinciden"



    // Agrega aquí otras traducciones
  };

  String get(String key) {
    return translations[key] ?? key;
  }
}
