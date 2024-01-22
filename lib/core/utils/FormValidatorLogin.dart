import 'package:FantasyF1/localization/app_localization.dart';
import 'package:get/get_utils/get_utils.dart';

class FormValidatorLogin {
  final AppLocalization localization;

  FormValidatorLogin(this.localization);

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail
        ? null
        : LocalizationExtension("msg_error_email").tr;
  }

  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return LocalizationExtension("msg_error_password").tr;
    }
    return null;
  }
}
