import 'package:flutter/material.dart';

import '../../../flutter_flow/flutter_flow_model.dart';
import '../../componentes/header_logo_texto_f1/header_logo_texto_f1_model.dart';
import '../../componentes/tap_bar/login_registrarse/login_registrarse_model.dart';
import 's21_login_registrarse_widget.dart' show S21LoginRegistrarseWidget;

class S21LoginRegistrarseModel
    extends FlutterFlowModel<S21LoginRegistrarseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HeaderLogoTextoF1 component.
  late HeaderLogoTextoF1Model headerLogoTextoF1Model;
  // Model for LoginRegistrarse component.
  late LoginRegistrarseModel loginRegistrarseModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerLogoTextoF1Model =
        createModel(context, () => HeaderLogoTextoF1Model());
    loginRegistrarseModel = createModel(context, () => LoginRegistrarseModel());
  }

  void dispose() {
    unfocusNode.dispose();
    headerLogoTextoF1Model.dispose();
    loginRegistrarseModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
