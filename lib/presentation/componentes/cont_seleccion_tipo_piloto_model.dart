
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cont_seleccion_tipo_piloto_widget.dart'
    show ContSeleccionTipoPilotoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContSeleccionTipoPilotoModel
    extends FlutterFlowModel<ContSeleccionTipoPilotoWidget> {
  ///  Local state fields for this component.

  List<String> listadoPilotosAMostrar = [''];
  void addToListadoPilotosAMostrar(String item) =>
      listadoPilotosAMostrar.add(item);
  void removeFromListadoPilotosAMostrar(String item) =>
      listadoPilotosAMostrar.remove(item);
  void removeAtIndexFromListadoPilotosAMostrar(int index) =>
      listadoPilotosAMostrar.removeAt(index);
  void insertAtIndexInListadoPilotosAMostrar(int index, String item) =>
      listadoPilotosAMostrar.insert(index, item);
  void updateListadoPilotosAMostrarAtIndex(
          int index, Function(String) updateFn) =>
      listadoPilotosAMostrar[index] = updateFn(listadoPilotosAMostrar[index]);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
