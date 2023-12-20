import '/flutter_flow/flutter_flow_util.dart';
import 'login_registrarse_widget.dart' show LoginRegistrarseWidget;
import 'package:flutter/material.dart';

class LoginRegistrarseModel extends FlutterFlowModel<LoginRegistrarseWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField_Correo_Login widget.
  FocusNode? textFieldCorreoLoginFocusNode;
  TextEditingController? textFieldCorreoLoginController;
  String? _textFieldCorreoLoginControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (!RegExp(
            '^[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\$')
        .hasMatch(val)) {
      return 'El correo electrónico no es válido';
    }
    return null;
  }

  // State field(s) for TextField_Contrasena_Login widget.
  FocusNode? textFieldContrasenaLoginFocusNode;
  TextEditingController? textFieldContrasenaLoginController;
  late bool textFieldContrasenaLoginVisibility;
  String? _textFieldContrasenaLoginControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (val.length < 10) {
      return 'El tamaño mínimo es de 10 caracteres';
    }

    if (!RegExp(
            '^(?=.*[a-zA-Z])(?=.*\\d)(?=.*[@#\$%&-])[A-Za-z\\d@#\$%&-]{10,}\$')
        .hasMatch(val)) {
      return 'La contraseña no cumple con los requisitos';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for TextField_Correo_Registrarse widget.
  FocusNode? textFieldCorreoRegistrarseFocusNode;
  TextEditingController? textFieldCorreoRegistrarseController;

  // State field(s) for TextField_Contrasena_Registrarse widget.
  FocusNode? textFieldContrasenaRegistrarseFocusNode;
  TextEditingController? textFieldContrasenaRegistrarseController;
  late bool textFieldContrasenaRegistrarseVisibility;
  String? Function(BuildContext, String?)?
      textFieldContrasenaRegistrarseControllerValidator;

  // State field(s) for TextField_RepetirContrasena_Registrarse widget.
  FocusNode? textFieldRepetirContrasenaRegistrarseFocusNode;
  TextEditingController? textFieldRepetirContrasenaRegistrarseController;
  late bool textFieldRepetirContrasenaRegistrarseVisibility;
  String? Function(BuildContext, String?)?
      textFieldRepetirContrasenaRegistrarseControllerValidator;


  // State field(s) for Checkbox widget.
  bool? checkboxValue2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldContrasenaLoginVisibility = false;
    textFieldContrasenaRegistrarseVisibility = false;
    textFieldRepetirContrasenaRegistrarseVisibility = false;

  }

  void dispose() {
    tabBarController?.dispose();
    textFieldCorreoLoginFocusNode?.dispose();
    textFieldCorreoLoginController?.dispose();

    textFieldContrasenaLoginFocusNode?.dispose();
    textFieldContrasenaLoginController?.dispose();

    textFieldCorreoRegistrarseFocusNode?.dispose();
    textFieldCorreoRegistrarseController?.dispose();

    textFieldContrasenaRegistrarseFocusNode?.dispose();
    textFieldContrasenaRegistrarseController?.dispose();

    textFieldRepetirContrasenaRegistrarseFocusNode?.dispose();
    textFieldRepetirContrasenaRegistrarseController?.dispose();
  }

  /// Action blocks are added here.

  Future<bool?> comprobacionCamposRegistro(BuildContext context) async {
    return null;
  }

  /// Additional helper methods are added here.
}
