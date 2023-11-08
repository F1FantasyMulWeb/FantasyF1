import 'package:get/get_utils/get_utils.dart';
import '../../localization/es_es/es_es_translations_class_spf.dart';

class FormValidatorRegister {
  final es_es_translations_class_spf customTranslations;

  FormValidatorRegister(this.customTranslations);

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : customTranslations.get("msg_error_email");
  }

  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return customTranslations.get("msg_error_password");
    } else if (text.length < 10) {
      return customTranslations.get("msg_error_pass_min");
    } else if (text.contains(' ')) {
      return customTranslations.get("msg_error_pass_space");
    } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(text)) {
      return customTranslations.get("msg_error_pass_min");
    } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(text)) {
      return customTranslations.get("msg_error_pass_may");
    } else if (!RegExp(r'^(?=.*\d)').hasMatch(text)) {
      return customTranslations.get("msg_error_pass_num");
    }
    return null;
  }

  String? isValidUsuario(String? text) {
    if (text == null || text.isEmpty) {
      return customTranslations.get("msg_error_user");
    } else if (text.contains(' ')) {
      return customTranslations.get("msg_error_user_space");
    }
    return null;
  }

  String? isValidRepeatedPassword(String? text, String? originalPassword) {
    if (text == null || text.isEmpty) {
      return customTranslations.get("msg_error_password");
    } else if (text != originalPassword) {
      return customTranslations.get("msg_error_passwords_do_not_match");
    }
    return null;
  }
}
