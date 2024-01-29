import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/grupoactual.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_cambiar_pilotos_model.dart';
export 'cont_cambiar_pilotos_model.dart';

class ContCambiarPilotosWidget extends ConsumerStatefulWidget {
  const ContCambiarPilotosWidget({
    Key? key,
    String? tipoPilotoACambiar,
    required this.listaPilotosMostrar,
  })  : this.tipoPilotoACambiar = tipoPilotoACambiar ?? 'PILOTO PRINCIPAL',
        super(key: key);

  final String tipoPilotoACambiar;
  final List<String>? listaPilotosMostrar;

  @override
  ConsumerState<ContCambiarPilotosWidget> createState() =>
      _ContCambiarPilotosWidgetState();
}

class _ContCambiarPilotosWidgetState
    extends ConsumerState<ContCambiarPilotosWidget> {
  late ContCambiarPilotosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContCambiarPilotosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: 220.0,
        height: 160.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xFF060606),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 200.0,
                height: 25.0,
                decoration: BoxDecoration(),
                child: Text(
                  widget.tipoPilotoACambiar,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF060606),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Divider(
                thickness: 2.0,
                color: Color(0xFF060606),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(),
                  child: Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: FlutterFlowDropDown<String>(
                      controller:
                          _model.dropDownPilotoPrincipalValueController ??=
                              FormFieldController<String>(null),
                      options: widget.listaPilotosMostrar!,
                      onChanged: (val) => setState(
                          () => _model.dropDownPilotoPrincipalValue = val),
                      width: 300.0,
                      height: 50.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF060606),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                      hintText: 'Elige un piloto',
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Color(0xFF060606),
                        size: 25.0,
                      ),
                      fillColor: Color(0xFFF6F6F6),
                      elevation: 2.0,
                      borderColor: Color(0xFF060606),
                      borderWidth: 2.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 5.0),
                      hidesUnderline: true,
                      isOverButton: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 35.0,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 95.0,
                          height: 35.0,
                          decoration: BoxDecoration(),
                          child: FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'CANCELAR',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF26457),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFFF6F6F6),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 90.0,
                          height: 35.0,
                          decoration: const BoxDecoration(),
                          child: FFButtonWidget(
                            onPressed: () async {
                              String pilotoSeleccionado =
                                  _model.dropDownPilotoPrincipalValue ?? '';

                              final grupoActualModel =
                                  ref.read(grupoActualModelProvider.notifier);

                              if (widget.tipoPilotoACambiar ==
                                  'PILOTO PRINCIPAL') {
                                grupoActualModel
                                    .setPilotoPrincipal(pilotoSeleccionado);
                              } else if (widget.tipoPilotoACambiar ==
                                  'PILOTO SECUNDARIO') {
                                grupoActualModel
                                    .setPilotoSecundario(pilotoSeleccionado);
                              }
                              print('pilotoSeleccionado: $pilotoSeleccionado');
                              Navigator.pop(context);
                            },
                            text: 'GUARDAR',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF060606),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFFF6F6F6),
                                    fontSize: 15.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(width: 10.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
