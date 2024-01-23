import '../../componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'infocircuito_screen.dart';

class Info_circuitos_model extends FlutterFlowModel<Infocircuito_screen> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard1_Mv component.
  late ContAppBard1MvModel contAppBard1MvModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard1MvModel = createModel(context, () => ContAppBard1MvModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard1MvModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
