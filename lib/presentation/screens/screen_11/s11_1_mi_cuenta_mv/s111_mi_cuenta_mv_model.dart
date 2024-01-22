import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '/pages/componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 's111_mi_cuenta_mv_widget.dart' show S111MiCuentaMvWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S111MiCuentaMvModel extends FlutterFlowModel<S111MiCuentaMvWidget> {
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
