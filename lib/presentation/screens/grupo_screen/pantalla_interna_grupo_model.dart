// TODO Implement this library.import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '../../componentes/parte_superior_app_2/parte_superior_app2_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pantalla_interna_grupo_widget.dart' show PantallaInternaGrupoWidget;

class PantallaInternaGrupoModel
    extends FlutterFlowModel<PantallaInternaGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ParteSuperiorApp_2 component.
  late ParteSuperiorApp2Model parteSuperiorApp2Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    parteSuperiorApp2Model =
        createModel(context, () => ParteSuperiorApp2Model());
  }

  void dispose() {
    unfocusNode.dispose();
    parteSuperiorApp2Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
