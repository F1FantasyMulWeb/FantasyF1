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

  // State field(s) for TextField_Contrasena_Login widget.
  FocusNode? textFieldContrasenaLoginFocusNode;
  TextEditingController? textFieldContrasenaLoginController;
  late bool textFieldContrasenaLoginVisibility;

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


  /// Additional helper methods are added here.
}
