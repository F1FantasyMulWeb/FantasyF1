import 'package:get/get_utils/get_utils.dart';
import '../../localization/es_es/es_es_translations_class_spf.dart';

class FormValidatorLogin {
  final es_es_translations_class_spf customTranslations;

  FormValidatorLogin(this.customTranslations);

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : customTranslations.get("msg_error_email");
  }

  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return customTranslations.get("msg_error_password");
    }
    return null;
  }
}
