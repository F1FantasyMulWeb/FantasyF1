import 'package:get/get_utils/get_utils.dart';

class FormValidatorRegister {

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : "msg_error_email".tr;
  }

  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return "msg_error_password".tr;
    } else if (text.length < 10) {
      return "msg_error_pass_min".tr;
    } else if (text.contains(' ')) {
      return "msg_error_pass_space".tr;
    } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(text)) {
      return "msg_error_pass_min".tr;
    } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(text)) {
      return "msg_error_pass_may".tr;
    } else if (!RegExp(r'^(?=.*\d)').hasMatch(text)) {
      return "msg_error_pass_num".tr;
    } else if (!RegExp(r'^(?=.*[@\$!%*?&])').hasMatch(text)) {
      return "msg_error_pass_caraspec".tr;
    }
    return null;
  }

  String? isValidUsuario(String? text) {
    if (text == null || text.isEmpty) {
      return "msg_error_user".tr;
    } else if (text.contains(' ')) {
      return "msg_error_user_space".tr;
    }
    return null;
  }
  String? isValidRepeatedPassword(String? text, String? originalPassword) {
    if (text == null || text.isEmpty) {
      return "msg_error_password".tr;
    } else if (text != originalPassword) {
      return "msg_error_passwords_do_not_match".tr;
    }
    return null;
  }


}
