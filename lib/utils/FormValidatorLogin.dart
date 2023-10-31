import 'package:get/get_utils/get_utils.dart';

class FormValidatorLogin {

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : "Lo que acabas de introducir no es un email";
  }
  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return "El campo de contraseña esta vacia";
    }
    return null;
  }
}
