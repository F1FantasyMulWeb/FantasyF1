import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../DataBase/databasecontroller.dart';
import '../../provider/grupoactual.dart';
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

class ContSeleccionTipoPilotoWidget extends ConsumerStatefulWidget {
  const ContSeleccionTipoPilotoWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ContSeleccionTipoPilotoWidget> createState() =>
      _ContSeleccionTipoPilotoWidgetState();
}

class _ContSeleccionTipoPilotoWidgetState
    extends ConsumerState<ContSeleccionTipoPilotoWidget> {
  late ContSeleccionTipoPilotoModel _model;
  DataBaseController dataBaseController = DataBaseController();

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContSeleccionTipoPilotoModel());
    Future.microtask(() => cargarPilotos());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }


  Future<void> cargarPilotos() async {
    final groupModel = ref.read(grupoActualModelProvider.notifier);
    List<String> listaPilotosGrupos = await dataBaseController
        .pilotosDeUnUsuarioEnUnGrupo(groupModel.codeGrupo);

    Map<String, String> nuevosPilotosGraje = {};

    for (String pilotoId in listaPilotosGrupos) {
      String nombrePiloto = await dataBaseController.nombrePioloto(pilotoId);

      nuevosPilotosGraje[pilotoId] = nombrePiloto;

      if (!_model.listadoPilotosAMostrar.contains(nombrePiloto)) {
        _model.addToListadoPilotosAMostrar(nombrePiloto);
      }
    }

    groupModel.setpilotosGraje(nuevosPilotosGraje);

    print("pilotos:");
    print(groupModel.pilotosGaraje);
  }


  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    cargarPilotos();

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
          color: const Color(0xF6F6F6F6),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xFF060606),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
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
                        color: const Color(0xFF060606),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Divider(
                thickness: 2.0,
                color: Color(0xFF060606),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Container(
                  width: 200.0,
                  height: 40.0,
                  decoration: BoxDecoration(),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                      await showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: ContCambiarPilotosWidget(
                              tipoPilotoACambiar: 'PILOTO PRINCIPAL',
                              listaPilotosMostrar:
                                  _model.listadoPilotosAMostrar,
                            ),
                          );
                        },
                      ).then((value) {
                        if (mounted) {
                          setState(() {});
                        }
                      });
                    },
                    text: 'PILOTO PRINCIPAL',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 0.0, 20.0, 0.0),
                      color: Color(0xFFF6F6F6),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF060606),
                                fontSize: 15.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Color(0xFF060606),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
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
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                      await showDialog(
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: const AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: ContCambiarPilotosWidget(
                              tipoPilotoACambiar: 'PILOTO SECUNDARIO',
                              listaPilotosMostrar:
                                  _model.listadoPilotosAMostrar,
                            ),
                          );
                        },
                      ).then((value) {
                        if (mounted) {
                          setState(() {});
                        }
                      });
                    },
                    text: 'PILOTO SECUNDARIO',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          20.0, 0.0, 20.0, 0.0),
                      color: const Color(0xFFF6F6F6),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: const Color(0xFF060606),
                                fontSize: 15.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Color(0xFF060606),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
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
