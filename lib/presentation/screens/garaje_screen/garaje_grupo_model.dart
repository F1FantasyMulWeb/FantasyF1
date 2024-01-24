import '../../componentes/cont_proxima_carrera_model.dart';
import '../../componentes/cont_vista_piloto1_mv/cont_vista_piloto1_mv_model.dart';
import '../../componentes/cont_vista_piloto2_mv/cont_vista_piloto2_mv_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'garaje_grupo_widget.dart' show GarajeGrupoWidget;
import 'package:flutter/material.dart';


class GarajeGrupoModel extends FlutterFlowModel<GarajeGrupoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_MenuLateral component.
  late ContMenuLateralModel contMenuLateralModel;
  // Model for Cont_AppBard3_Mv component.
  late ContAppBard3MvModel contAppBard3MvModel;
  // Model for Cont_ProximaCarrera component.
  late ContProximaCarreraModel contProximaCarreraModel;
  // Model for Cont_VistaPiloto1_Mv component.
  late ContVistaPiloto1MvModel contVistaPiloto1MvModel1;
  // Model for Cont_VistaPiloto1_Mv component.
  late ContVistaPiloto1MvModel contVistaPiloto1MvModel2;
  // Model for Cont_VistaPiloto2_Mv component.
  late ContVistaPiloto2MvModel contVistaPiloto2MvModel1;
  // Model for Cont_VistaPiloto2_Mv component.
  late ContVistaPiloto2MvModel contVistaPiloto2MvModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contMenuLateralModel = createModel(context, () => ContMenuLateralModel());
    contAppBard3MvModel = createModel(context, () => ContAppBard3MvModel());
    contProximaCarreraModel =
        createModel(context, () => ContProximaCarreraModel());
    contVistaPiloto1MvModel1 =
        createModel(context, () => ContVistaPiloto1MvModel());
    contVistaPiloto1MvModel2 =
        createModel(context, () => ContVistaPiloto1MvModel());
    contVistaPiloto2MvModel1 =
        createModel(context, () => ContVistaPiloto2MvModel());
    contVistaPiloto2MvModel2 =
        createModel(context, () => ContVistaPiloto2MvModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contMenuLateralModel.dispose();
    contAppBard3MvModel.dispose();
    contProximaCarreraModel.dispose();
    contVistaPiloto1MvModel1.dispose();
    contVistaPiloto1MvModel2.dispose();
    contVistaPiloto2MvModel1.dispose();
    contVistaPiloto2MvModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
