import '../../../componentes/cont_acciones_internas_grupo_model.dart';
import '../../../componentes/cont_apartados_internos_grupo_model.dart';
import '../../../componentes/cont_info_interna_grupo_model.dart';
import '../../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_model.dart';
import '../../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mercado_pilotos_grupo_widget.dart'
    show S095MercadoPilotosGrupoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S095MercadoPilotosGrupoModel
    extends FlutterFlowModel<S095MercadoPilotosGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard3_Mv component.
  late ContAppBard3MvModel contAppBard3MvModel;
  // Model for Cont_InfoInternaGrupo component.
  late ContInfoInternaGrupoModel contInfoInternaGrupoModel;
  // Model for Cont_AccionesInternasGrupo component.
  late ContAccionesInternasGrupoModel contAccionesInternasGrupoModel;
  // Model for Cont_ApartadosInternosGrupo component.
  late ContApartadosInternosGrupoModel contApartadosInternosGrupoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard3MvModel = createModel(context, () => ContAppBard3MvModel());
    contInfoInternaGrupoModel =
        createModel(context, () => ContInfoInternaGrupoModel());
    contAccionesInternasGrupoModel =
        createModel(context, () => ContAccionesInternasGrupoModel());
    contApartadosInternosGrupoModel =
        createModel(context, () => ContApartadosInternosGrupoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard3MvModel.dispose();
    contInfoInternaGrupoModel.dispose();
    contAccionesInternasGrupoModel.dispose();
    contApartadosInternosGrupoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
