import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_cambiar_pilotos_widget.dart';
import 'cont_seleccion_tipo_piloto_model.dart';
export 'cont_seleccion_tipo_piloto_model.dart';

class ContSeleccionTipoPilotoWidget extends StatefulWidget {
  const ContSeleccionTipoPilotoWidget({Key? key}) : super(key: key);

  @override
  _ContSeleccionTipoPilotoWidgetState createState() =>
      _ContSeleccionTipoPilotoWidgetState();
}

class _ContSeleccionTipoPilotoWidgetState
    extends State<ContSeleccionTipoPilotoWidget> {
  late ContSeleccionTipoPilotoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContSeleccionTipoPilotoModel());

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
        height: 205.0,
        decoration: BoxDecoration(
          color: Color(0xF6F6F6F6),
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
                  'PILOTO A CAMBIAR',
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
                  child: Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: ContCambiarPilotosWidget(
                                tipoPilotoACambiar: 'PILOTO PRINCIPAL',
                                listaPilotosMostrar:
                                    _model.listadoPilotosAMostrar,
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      text: 'PILOTO PRINCIPAL',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFF6F6F6),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 15.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Color(0xFF060606),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(),
                  child: Builder(
                    builder: (context) => FFButtonWidget(
                      onPressed: () async {
                        Navigator.pop(context);
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: ContCambiarPilotosWidget(
                                tipoPilotoACambiar: 'PILOTO PRINCIPAL',
                                listaPilotosMostrar:
                                    _model.listadoPilotosAMostrar,
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      text: 'PILOTO SECUNDARIO',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFFF6F6F6),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 15.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Color(0xFF060606),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
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
                              borderSide: BorderSide(
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
