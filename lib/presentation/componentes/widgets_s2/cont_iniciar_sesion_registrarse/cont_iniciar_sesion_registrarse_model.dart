
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cont_iniciar_sesion_registrarse_widget.dart'
    show ContIniciarSesionRegistrarseWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContIniciarSesionRegistrarseModel
    extends FlutterFlowModel<ContIniciarSesionRegistrarseWidget> {
  ///  Local state fields for this component.

  bool? errorCheckBoxPoliticas = false;

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar_IniciarSesionRegistrarse widget.
  TabController? tabBarIniciarSesionRegistrarseController;
  int get tabBarIniciarSesionRegistrarseCurrentIndex =>
      tabBarIniciarSesionRegistrarseController != null
          ? tabBarIniciarSesionRegistrarseController!.index
          : 0;

  // State field(s) for TextField_CorreoLogin widget.
  FocusNode? textFieldCorreoLoginFocusNode;
  TextEditingController? textFieldCorreoLoginController;
  String? Function(BuildContext, String?)?
      textFieldCorreoLoginControllerValidator;
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

  // State field(s) for TextField_ContrasenaLogin widget.
  FocusNode? textFieldContrasenaLoginFocusNode;
  TextEditingController? textFieldContrasenaLoginController;
  late bool textFieldContrasenaLoginVisibility;
  String? Function(BuildContext, String?)?
      textFieldContrasenaLoginControllerValidator;
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
  // State field(s) for TextField_CorreoRegistrarse widget.
  FocusNode? textFieldCorreoRegistrarseFocusNode;
  TextEditingController? textFieldCorreoRegistrarseController;
  String? Function(BuildContext, String?)?
      textFieldCorreoRegistrarseControllerValidator;
  String? _textFieldCorreoRegistrarseControllerValidator(
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

  // State field(s) for TextField_ContrasenaRegistrarse widget.
  FocusNode? textFieldContrasenaRegistrarseFocusNode;
  TextEditingController? textFieldContrasenaRegistrarseController;
  late bool textFieldContrasenaRegistrarseVisibility;
  String? Function(BuildContext, String?)?
      textFieldContrasenaRegistrarseControllerValidator;
  String? _textFieldContrasenaRegistrarseControllerValidator(
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

  // State field(s) for TextField_RepetirContrasenaRegistrarse widget.
  FocusNode? textFieldRepetirContrasenaRegistrarseFocusNode;
  TextEditingController? textFieldRepetirContrasenaRegistrarseController;
  late bool textFieldRepetirContrasenaRegistrarseVisibility;
  String? Function(BuildContext, String?)?
      textFieldRepetirContrasenaRegistrarseControllerValidator;
  String? _textFieldRepetirContrasenaRegistrarseControllerValidator(
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
  bool? checkboxValue2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldCorreoLoginControllerValidator =
        _textFieldCorreoLoginControllerValidator;
    textFieldContrasenaLoginVisibility = false;
    textFieldContrasenaLoginControllerValidator =
        _textFieldContrasenaLoginControllerValidator;
    textFieldCorreoRegistrarseControllerValidator =
        _textFieldCorreoRegistrarseControllerValidator;
    textFieldContrasenaRegistrarseVisibility = false;
    textFieldContrasenaRegistrarseControllerValidator =
        _textFieldContrasenaRegistrarseControllerValidator;
    textFieldRepetirContrasenaRegistrarseVisibility = false;
    textFieldRepetirContrasenaRegistrarseControllerValidator =
        _textFieldRepetirContrasenaRegistrarseControllerValidator;
  }

  void dispose() {
    tabBarIniciarSesionRegistrarseController?.dispose();
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
