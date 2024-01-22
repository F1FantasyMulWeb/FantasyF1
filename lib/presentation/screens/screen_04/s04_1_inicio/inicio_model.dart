import '/components/cont_anterior_carrera_widget.dart';
import '/components/cont_proxima_carrera_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_widget.dart';
import '/pages/componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 'inicio_widget.dart' show S041InicioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S041InicioModel extends FlutterFlowModel<S041InicioWidget> {
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
