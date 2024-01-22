import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_genericos/cont_header_f1_fantasy/cont_header_f1_fantasy_widget.dart';
import '/pages/componentes/widgets_s2/cont_restablecer_contrasena/cont_restablecer_contrasena_widget.dart';
import '/pages/componentes_internos/widgets_s01/carrusel_s01/carrusel_s01_widget.dart';
import 's022_restablecer_contrasena_mv_widget.dart'
    show S022RestablecerContrasenaMvWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S022RestablecerContrasenaMvModel
    extends FlutterFlowModel<S022RestablecerContrasenaMvWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_Header_F1Fantasy component.
  late ContHeaderF1FantasyModel contHeaderF1FantasyModel1;
  // Model for Cont_RestablecerContrasena component.
  late ContRestablecerContrasenaModel contRestablecerContrasenaModel1;
  // Model for Cont_Header_F1Fantasy component.
  late ContHeaderF1FantasyModel contHeaderF1FantasyModel2;
  // Model for Cont_RestablecerContrasena component.
  late ContRestablecerContrasenaModel contRestablecerContrasenaModel2;
  // Model for carrusel_s01 component.
  late CarruselS01Model carruselS01Model;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contHeaderF1FantasyModel1 =
        createModel(context, () => ContHeaderF1FantasyModel());
    contRestablecerContrasenaModel1 =
        createModel(context, () => ContRestablecerContrasenaModel());
    contHeaderF1FantasyModel2 =
        createModel(context, () => ContHeaderF1FantasyModel());
    contRestablecerContrasenaModel2 =
        createModel(context, () => ContRestablecerContrasenaModel());
    carruselS01Model = createModel(context, () => CarruselS01Model());
  }

  void dispose() {
    unfocusNode.dispose();
    contHeaderF1FantasyModel1.dispose();
    contRestablecerContrasenaModel1.dispose();
    contHeaderF1FantasyModel2.dispose();
    contRestablecerContrasenaModel2.dispose();
    carruselS01Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
