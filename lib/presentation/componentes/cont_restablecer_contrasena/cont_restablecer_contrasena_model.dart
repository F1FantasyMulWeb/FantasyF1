import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cont_restablecer_contrasena_widget.dart'
    show ContRestablecerContrasenaWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContRestablecerContrasenaModel
    extends FlutterFlowModel<ContRestablecerContrasenaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar_RestablecerContrasena widget.
  TabController? tabBarRestablecerContrasenaController;
  int get tabBarRestablecerContrasenaCurrentIndex =>
      tabBarRestablecerContrasenaController != null
          ? tabBarRestablecerContrasenaController!.index
          : 0;

  // State field(s) for TextField_CorreoRestablecerContrasena widget.
  FocusNode? textFieldCorreoRestablecerContrasenaFocusNode;
  TextEditingController? textFieldCorreoRestablecerContrasenaController;
  String? Function(BuildContext, String?)?
      textFieldCorreoRestablecerContrasenaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tabBarRestablecerContrasenaController?.dispose();
    textFieldCorreoRestablecerContrasenaFocusNode?.dispose();
    textFieldCorreoRestablecerContrasenaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
