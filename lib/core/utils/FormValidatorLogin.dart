import 'package:get/get_utils/get_utils.dart';

class FormValidatorLogin {

  String? isValidEmail(String? text) {
    return (text ?? "").isEmail ? null : "msg_error_email".tr;
  }
  String? isValidPass(String? text) {
    if (text == null || text.isEmpty) {
      return "msg_error_password".tr;
    }
    return null;
  }
}
