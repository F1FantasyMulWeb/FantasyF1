import '../../../componentes/widgets_genericos/cont_header_f1_fantasy/cont_header_f1_fantasy_model.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pantalla_carga_widget.dart' show S031PantallaCargaMvWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class S031PantallaCargaMvModel
    extends FlutterFlowModel<S031PantallaCargaMvWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Cont_Header_F1Fantasy component.
  late ContHeaderF1FantasyModel contHeaderF1FantasyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contHeaderF1FantasyModel =
        createModel(context, () => ContHeaderF1FantasyModel());
  }

  void dispose() {
    unfocusNode.dispose();
    contHeaderF1FantasyModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
