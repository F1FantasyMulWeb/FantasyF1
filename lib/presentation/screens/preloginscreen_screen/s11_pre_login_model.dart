import 'package:flutter/material.dart';

import '../../../flutter_flow/flutter_flow_util.dart';
import '../../componentes/serigrafia/contenedor_info_app/contenedor_info_app_model.dart';
import '../../componentes/serigrafia/contenedor_pre_login/contenedor_pre_login_model.dart';
import 's11_pre_login_widget.dart' show S11PreLoginWidget;

class S11PreLoginModel extends FlutterFlowModel<S11PreLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for InfoApp.
  late ContenedorInfoAppModel infoAppModel;
  // Model for Contenedor_Bienvenida.
  late ContenedorPreLoginModel contenedorBienvenidaModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    infoAppModel = createModel(context, () => ContenedorInfoAppModel());
    contenedorBienvenidaModel =
        createModel(context, () => ContenedorPreLoginModel());
  }

  void dispose() {
    unfocusNode.dispose();
    infoAppModel.dispose();
    contenedorBienvenidaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
