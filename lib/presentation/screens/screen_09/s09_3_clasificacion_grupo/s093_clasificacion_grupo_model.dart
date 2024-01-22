import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_widget.dart';
import '/pages/componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 's093_clasificacion_grupo_widget.dart' show S093ClasificacionGrupoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S093ClasificacionGrupoModel
    extends FlutterFlowModel<S093ClasificacionGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard3_Mv component.
  late ContAppBard3MvModel contAppBard3MvModel;

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
