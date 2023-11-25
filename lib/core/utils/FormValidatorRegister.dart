import 'package:fantasyf1/localization/app_localization.dart';
import 'package:get/get_utils/get_utils.dart';

class FormValidatorRegister {
  final AppLocalization localization;

  FormValidatorRegister(this.localization);

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : LocalizationExtension("msg_error_email").tr;
  }

  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return LocalizationExtension("msg_error_password").tr;
    } else if (text.length < 10) {
      return LocalizationExtension("msg_error_pass_min").tr;
    } else if (text.contains(' ')) {
      return LocalizationExtension("msg_error_pass_space").tr;
    } else if (!RegExp(r'^(?=.*[a-z])').hasMatch(text)) {
      return LocalizationExtension("msg_error_pass_min").tr;
    } else if (!RegExp(r'^(?=.*[A-Z])').hasMatch(text)) {
      return LocalizationExtension("msg_error_pass_may").tr;
    } else if (!RegExp(r'^(?=.*\d)').hasMatch(text)) {
      return LocalizationExtension("msg_error_pass_num").tr;
    }
    return null;
  }

  String? isValidUsuario(String? text) {
    if (text == null || text.isEmpty) {
      return LocalizationExtension("msg_error_user").tr;
    } else if (text.contains(' ')) {
      return LocalizationExtension("msg_error_pass_space").tr;
    }
    return null;
  }

  String? isValidRepeatedPassword(String? text, String? originalPassword) {
    if (text == null || text.isEmpty) {
      return LocalizationExtension("msg_error_password").tr;
    } else if (text != originalPassword) {
      return LocalizationExtension("msg_error_passwords_do_not_match").tr;
    }
    return null;
  }
}
