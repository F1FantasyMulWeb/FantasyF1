import '../../componentes/parte_superior_app_1/parte_superior_app1_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 's51_pantalla_listado_grupos_widget.dart'
    show S51PantallaListadoGruposWidget;
import 'package:flutter/material.dart';

class S51PantallaListadoGruposModel
    extends FlutterFlowModel<S51PantallaListadoGruposWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ParteSuperiorApp_1 component.
  late ParteSuperiorApp1Model parteSuperiorApp1Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    parteSuperiorApp1Model =
        createModel(context, () => ParteSuperiorApp1Model());
  }

  void dispose() {
    unfocusNode.dispose();
    parteSuperiorApp1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
