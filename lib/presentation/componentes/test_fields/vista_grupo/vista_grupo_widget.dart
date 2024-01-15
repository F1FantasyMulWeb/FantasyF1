import 'package:get/get.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'vista_grupo_model.dart';
export 'vista_grupo_model.dart';

class VistaGrupoWidget extends StatefulWidget {
  final String nombreGrupo;
  final int cantidadJugadores;
  final VoidCallback onTap; // Agregado

  const VistaGrupoWidget({
    super.key,
    required this.nombreGrupo,
    required this.cantidadJugadores,
    required this.onTap, // Agregado
  });

  @override
  _VistaGrupoWidgetState createState() => _VistaGrupoWidgetState();
}

class _VistaGrupoWidgetState extends State<VistaGrupoWidget> {
  late VistaGrupoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    print(widget.nombreGrupo);
    print(widget.cantidadJugadores);
    super.initState();
    _model = createModel(context, () => VistaGrupoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0xFFADB6BF),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: Container(
                width: 120.0,
                height: 120.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/logoF1F_IconoApp.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 190.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 5.0, 0.0),
                    child: Container(
                      width: 175.0,
                      height: 25.0,
                      decoration: BoxDecoration(),
                      child: Text(
                        widget.nombreGrupo,
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF060606),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170.0,
                    height: 25.0,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(),
                          child: Text(
                              widget.cantidadJugadores.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Container(
                          width: 30.0,
                          height: 20.0,
                          decoration: BoxDecoration(),
                          child: Text(
                            '/10',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Container(
                            width: 100.0,
                            height: 20.0,
                            decoration: BoxDecoration(),
                            child: Text(
                              'JUGADORES',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xCDFF0007),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                borderWidth: 0.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFF060606),
                  size: 25.0,
                ),
                onPressed: widget.onTap, // Modificado
              ),
            ),
          ],
        ),
      ),
    );
  }
}
