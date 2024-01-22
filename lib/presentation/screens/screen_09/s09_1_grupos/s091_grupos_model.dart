import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/test_fields_redefinir_pendiente/vista_grupo/vista_grupo_widget.dart';
import '/pages/componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '/pages/componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 's091_grupos_widget.dart' show S091GruposWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S091GruposModel extends FlutterFlowModel<S091GruposWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel1;
  // Model for Cont_AppBard2_Mv component.
  late ContAppBard2MvModel contAppBard2MvModel;
  // Model for VistaGrupo component.
  late VistaGrupoModel vistaGrupoModel;
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel1 = createModel(context, () => ContMenuLateralModel());
    contAppBard2MvModel = createModel(context, () => ContAppBard2MvModel());
    vistaGrupoModel = createModel(context, () => VistaGrupoModel());
    contMenuLateralModel2 = createModel(context, () => ContMenuLateralModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel1.dispose();
    contAppBard2MvModel.dispose();
    vistaGrupoModel.dispose();
    contMenuLateralModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
