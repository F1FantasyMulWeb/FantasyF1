import '../cont_encabezado_menu/cont_encabezado_menu_model.dart';
import '../cont_opciones_cuenta_mv/cont_opciones_cuenta_mv_model.dart';
import '../cont_opciones_cuenta_pc/cont_opciones_cuenta_pc_model.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cont_menu_lateral_widget.dart' show ContMenuLateralWidget;
import 'package:flutter/material.dart';


class ContMenuLateralModel extends FlutterFlowModel<ContMenuLateralWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Cont_EncabezadoMenu component.
  late ContEncabezadoMenuModel contEncabezadoMenuModel1;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered7 = false;
  // Model for Cont_OpcionesCuenta_Mv component.
  late ContOpcionesCuentaMvModel contOpcionesCuentaMvModel;
  // Model for Cont_EncabezadoMenu component.
  late ContEncabezadoMenuModel contEncabezadoMenuModel2;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered8 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered9 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered10 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered11 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered12 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered13 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered14 = false;
  // Model for Cont_OpcionesCuenta_Pc component.
  late ContOpcionesCuentaPcModel contOpcionesCuentaPcModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contEncabezadoMenuModel1 =
        createModel(context, () => ContEncabezadoMenuModel());
    contOpcionesCuentaMvModel =
        createModel(context, () => ContOpcionesCuentaMvModel());
    contEncabezadoMenuModel2 =
        createModel(context, () => ContEncabezadoMenuModel());
    contOpcionesCuentaPcModel =
        createModel(context, () => ContOpcionesCuentaPcModel());
  }

  void dispose() {
    contEncabezadoMenuModel1.dispose();
    contOpcionesCuentaMvModel.dispose();
    contEncabezadoMenuModel2.dispose();
    contOpcionesCuentaPcModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
