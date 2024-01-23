import '../../componentes/cont_anterior_carrera_model.dart';
import '../../componentes/cont_proxima_carrera_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_widget.dart' show MainWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainModel extends FlutterFlowModel<MainWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard1_Mv component.
  late ContAppBard1MvModel contAppBard1MvModel;
  // Model for Cont_ProximaCarrera component.
  late ContProximaCarreraModel contProximaCarreraModel;
  // Model for Cont_AnteriorCarrera component.
  late ContAnteriorCarreraModel contAnteriorCarreraModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard1MvModel = createModel(context, () => ContAppBard1MvModel());
    contProximaCarreraModel =
        createModel(context, () => ContProximaCarreraModel());
    contAnteriorCarreraModel =
        createModel(context, () => ContAnteriorCarreraModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard1MvModel.dispose();
    contProximaCarreraModel.dispose();
    contAnteriorCarreraModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
