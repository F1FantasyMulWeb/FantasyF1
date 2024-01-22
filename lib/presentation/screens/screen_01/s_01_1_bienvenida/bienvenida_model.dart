import '../../../componentes/widgets_s01/carrusel_s01/carrusel_s01_model.dart';
import '../../../componentes/widgets_s01/cont_bienvenida/cont_bienvenida_model.dart';
import '../../../componentes/widgets_s01/cont_info_app/cont_info_app_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';

import 'bienvenida_widget.dart' show S011BienvenidaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S011BienvenidaModel extends FlutterFlowModel<S011BienvenidaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for cont_info_app component.
  late ContInfoAppModel contInfoAppModel1;
  // Model for cont_bienvenida component.
  late ContBienvenidaModel contBienvenidaModel1;
  // Model for cont_info_app component.
  late ContInfoAppModel contInfoAppModel2;
  // Model for cont_bienvenida component.
  late ContBienvenidaModel contBienvenidaModel2;
  // Model for carrusel_s01 component.
  late CarruselS01Model carruselS01Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contInfoAppModel1 = createModel(context, () => ContInfoAppModel());
    contBienvenidaModel1 = createModel(context, () => ContBienvenidaModel());
    contInfoAppModel2 = createModel(context, () => ContInfoAppModel());
    contBienvenidaModel2 = createModel(context, () => ContBienvenidaModel());
    carruselS01Model = createModel(context, () => CarruselS01Model());
  }

  void dispose() {
    unfocusNode.dispose();
    contInfoAppModel1.dispose();
    contBienvenidaModel1.dispose();
    contInfoAppModel2.dispose();
    contBienvenidaModel2.dispose();
    carruselS01Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
