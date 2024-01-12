import 'package:flutter/material.dart';

import '../../componentes/parte_superior_app_2/parte_superior_app2_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's53_pantalla_unirse_grupo_widget.dart'
    show S53PantallaUnirseGrupoWidget;

class S53PantallaUnirseGrupoModel
    extends FlutterFlowModel<S53PantallaUnirseGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ParteSuperiorApp_2 component.
  late ParteSuperiorApp2Model parteSuperiorApp2Model;
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

  void initState(BuildContext context) {
    parteSuperiorApp2Model =
        createModel(context, () => ParteSuperiorApp2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    parteSuperiorApp2Model.dispose();
    textFieldCodigoAccesoGrupoFocusNode?.dispose();
    textFieldCodigoAccesoGrupoController?.dispose();

    textFieldContrasenaGrupoFocusNode?.dispose();
    textFieldContrasenaGrupoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
