import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ajustes_widget.dart' show AjustesWidget;
import 'package:flutter/material.dart';


class AjustesModel extends FlutterFlowModel<AjustesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard2_Mv component.
  late ContAppBard2MvModel contAppBard2MvModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard2MvModel = createModel(context, () => ContAppBard2MvModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard2MvModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
