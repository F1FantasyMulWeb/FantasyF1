import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cambiar_contrasena_widget.dart' show CambiarContrasenaWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambiarContrasenaModel extends FlutterFlowModel<CambiarContrasenaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_Correo_CambiarContrasena widget.
  FocusNode? textFieldCorreoCambiarContrasenaFocusNode;
  TextEditingController? textFieldCorreoCambiarContrasenaController;
  String? Function(BuildContext, String?)?
      textFieldCorreoCambiarContrasenaControllerValidator;
  String? _textFieldCorreoCambiarContrasenaControllerValidator(
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

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldCorreoCambiarContrasenaControllerValidator =
        _textFieldCorreoCambiarContrasenaControllerValidator;
  }

  void dispose() {
    textFieldCorreoCambiarContrasenaFocusNode?.dispose();
    textFieldCorreoCambiarContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
