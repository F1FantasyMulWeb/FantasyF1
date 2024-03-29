// TODO Implement this library.import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

import '../../componentes/parte_superior_app_2/parte_superior_app2_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pantalla_interna_grupo_widget.dart' show PantallaInternaGrupoWidget;

class PantallaInternaGrupoModel
    extends FlutterFlowModel<PantallaInternaGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ParteSuperiorApp_2 component.
  late ParteSuperiorApp2Model parteSuperiorApp2Model;
  // Model for Cont_AppBard2_Mv component.
  late ContAppBard2MvModel contAppBard2MvModel;
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel2;
  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    parteSuperiorApp2Model =
        createModel(context, () => ParteSuperiorApp2Model());
    contMenuLateralModel2 = createModel(context, () => ContMenuLateralModel());
    contAppBard2MvModel = createModel(context, () => ContAppBard2MvModel());
  }

  void dispose() {
    unfocusNode.dispose();
    parteSuperiorApp2Model.dispose();
    contAppBard2MvModel.dispose();
    contMenuLateralModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
