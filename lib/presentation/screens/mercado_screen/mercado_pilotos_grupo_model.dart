import '../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mercado_screen.dart';
import 'package:flutter/material.dart';


class MercadoPilotosGrupoModel
    extends FlutterFlowModel<MercadoScreen> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard3_Mv component.
  late ContAppBard3MvModel contAppBard3MvModel;
  // Model for Cont_InfoInternaGrupo component.


  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard3MvModel = createModel(context, () => ContAppBard3MvModel());

  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard3MvModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
