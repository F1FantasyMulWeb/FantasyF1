import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 's54_pantalla_crear_grupo_widget.dart' show S54PantallaCrearGrupoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S54PantallaCrearGrupoModel
    extends FlutterFlowModel<S54PantallaCrearGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField_CodigoAccesoGrupo widget.
  FocusNode? textFieldCodigoAccesoGrupoFocusNode;
  TextEditingController? textFieldCodigoAccesoGrupoController;
  String? Function(BuildContext, String?)?
      textFieldCodigoAccesoGrupoControllerValidator;
  // State field(s) for TextField_ContrasenaGrupo widget.
  FocusNode? textFieldContrasenaGrupoFocusNode;
  TextEditingController? textFieldContrasenaGrupoController;
  String? Function(BuildContext, String?)?
      textFieldContrasenaGrupoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldCodigoAccesoGrupoFocusNode?.dispose();
    textFieldCodigoAccesoGrupoController?.dispose();

    textFieldContrasenaGrupoFocusNode?.dispose();
    textFieldContrasenaGrupoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
