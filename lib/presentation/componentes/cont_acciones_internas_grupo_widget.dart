import 'package:go_router/go_router.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_acciones_internas_grupo_model.dart';
export 'cont_acciones_internas_grupo_model.dart';

class ContAccionesInternasGrupoWidget extends StatefulWidget {
  const ContAccionesInternasGrupoWidget({
    Key? key,
    bool? esAdminGrupo,
  })  : this.esAdminGrupo = esAdminGrupo ?? false,
        super(key: key);

  final bool esAdminGrupo;

  @override
  _ContAccionesInternasGrupoWidgetState createState() =>
      _ContAccionesInternasGrupoWidgetState();
}

class _ContAccionesInternasGrupoWidgetState
    extends State<ContAccionesInternasGrupoWidget> {
  late ContAccionesInternasGrupoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContAccionesInternasGrupoModel());

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
        width: 300.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: Color(0xF6F6F6F6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150.0,
              height: 40.0,
              decoration: BoxDecoration(),
              child: FFButtonWidget(
                onPressed: () {
                  print('Boton_CopiarCodigo pressed ...');
                },
                text: 'COPIAR CODIGO',
                icon: Icon(
                  Icons.content_copy,
                  color: Color(0xFFF6F6F6),
                  size: 19.0,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF060606),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFF6F6F6),
                        fontSize: 12.0,
                      ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            if (widget.esAdminGrupo)
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('S09-7_ajustesGrupo');
                  },
                  text: 'EDITAR',
                  icon: Icon(
                    Icons.settings_sharp,
                    color: Color(0xFFF6F6F6),
                    size: 20.0,
                  ),
                  options: FFButtonOptions(
                    width: 40.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF060606),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF6F6F6),
                          fontSize: 12.0,
                        ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('S09-8_usuariosGrupo');
                },
                text: 'EDITAR',
                icon: Icon(
                  Icons.people,
                  color: Color(0xFFF6F6F6),
                  size: 20.0,
                ),
                options: FFButtonOptions(
                  width: 40.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  color: Color(0xFF060606),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFF6F6F6),
                        fontSize: 12.0,
                      ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('S09-1_grupos');
                },
                text: '',
                icon: Icon(
                  Icons.exit_to_app_rounded,
                  color: Color(0xFFF6F6F6),
                  size: 25.0,
                ),
                options: FFButtonOptions(
                  width: 40.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(7.0, 1.0, 0.0, 0.0),
                  color: Color(0xFF060606),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFFF6F6F6),
                        fontSize: 12.0,
                      ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
