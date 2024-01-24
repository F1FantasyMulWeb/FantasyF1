import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'lista_pilotos_screen.dart';

class Lista_pilotos_model extends FlutterFlowModel<ListaPilotosScreen> {
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
