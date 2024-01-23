import '../../../../routes/app_routes.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_opciones_cuenta_pc_model.dart';
export 'cont_opciones_cuenta_pc_model.dart';

class ContOpcionesCuentaPcWidget extends StatefulWidget {
  const ContOpcionesCuentaPcWidget({
    Key? key,
    String? paginaActual,
  })  : this.paginaActual = paginaActual ?? 'inicio_Mv',
        super(key: key);

  final String paginaActual;

  @override
  _ContOpcionesCuentaPcWidgetState createState() =>
      _ContOpcionesCuentaPcWidgetState();
}

class _ContOpcionesCuentaPcWidgetState
    extends State<ContOpcionesCuentaPcWidget> {
  late ContOpcionesCuentaPcModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContOpcionesCuentaPcModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 260.0,
        height: 225.0,
        decoration: BoxDecoration(
          color: Color(0xCDFFFFFF),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 240.0,
                height: 20.0,
                decoration: BoxDecoration(),
                child: Text(
                  'Opciones de tu cuenta',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF060606),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFF060606),
              ),
              Container(
                width: 240.0,
                height: 45.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          onTapAvatarScreen(context);
                        },
                        child: Container(
                          width: 120.0,
                          height: 120.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/imagenUsuario_Default.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 180.0,
                      height: 45.0,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 180.0,
                            height: 20.0,
                            decoration: BoxDecoration(),
                            child: Text(
                              'F1FantasyLover',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Container(
                            width: 180.0,
                            height: 20.0,
                            decoration: BoxDecoration(),
                            child: AutoSizeText(
                              'f1fantasylover@gmail.com',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF4B39EF),
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ].divide(SizedBox(height: 5.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 15.0)),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: Color(0xFF060606),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                child: Container(
                  width: 240.0,
                  height: 30.0,
                  decoration: BoxDecoration(),
                  child: MouseRegion(
                    opaque: false,
                    cursor: MouseCursor.defer ?? MouseCursor.defer,
                    onEnter: ((event) async {
                      setState(() => _model.mouseRegionHovered1 = true);
                    }),
                    onExit: ((event) async {
                      setState(() => _model.mouseRegionHovered1 = false);
                    }),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (widget.paginaActual == 'miCuenta_Mv') {
                          return;
                        }

                        onTapAvatarScreen(context);

                        return;
                      },
                      text: 'Mi cuenta',
                      icon: const Icon(
                        Icons.account_circle,
                        color: Color(0xFF060606),
                        size: 20.0,
                      ),
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 120.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: valueOrDefault<Color>(
                          _model.mouseRegionHovered1! ||
                                  (widget.paginaActual == 'miCuenta_Mv')
                              ? Color(0xB1B0B0B0)
                              : Color(0xFFF6F6F6),
                          Color(0xCDFFFFFF),
                        ),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 15.0,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: valueOrDefault<Color>(
                            _model.mouseRegionHovered1! ||
                                    (widget.paginaActual == 'miCuenta_Mv')
                                ? Color(0xB1B0B0B0)
                                : Color(0xFFF6F6F6),
                            Color(0xCDFFFFFF),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 240.0,
                height: 30.0,
                decoration: BoxDecoration(),
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  onEnter: ((event) async {
                    setState(() => _model.mouseRegionHovered2 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => _model.mouseRegionHovered2 = false);
                  }),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (widget.paginaActual == 'ajustes_Mv') {
                        return;
                      }

                      //context.pushNamed('S12-1_ajustes_Mv');

                      return;
                    },
                    text: 'Ajustes',
                    icon: const Icon(
                      Icons.settings_sharp,
                      color: Color(0xFF060606),
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 140.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: valueOrDefault<Color>(
                        _model.mouseRegionHovered2! ||
                                (widget.paginaActual == 'ajustes_Mv')
                            ? Color(0xB1B0B0B0)
                            : Color(0xFFF6F6F6),
                        Color(0xCDFFFFFF),
                      ),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF060606),
                                fontSize: 15.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: valueOrDefault<Color>(
                          _model.mouseRegionHovered2! ||
                                  (widget.paginaActual == 'ajustes_Mv')
                              ? Color(0xB1B0B0B0)
                              : Color(0xFFF6F6F6),
                          Color(0xCDFFFFFF),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFF060606),
              ),
              Container(
                width: 240.0,
                height: 30.0,
                decoration: BoxDecoration(),
                child: FFButtonWidget(
                  onPressed: () async {
                    //context.goNamed('S02-1_loginRegistrarse');
                  },
                  text: 'Cerrar sesión',
                  icon: const Icon(
                    Icons.login_rounded,
                    color: Color(0xFFF6F6F6),
                    size: 20.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 95.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF060606),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF6F6F6),
                          fontSize: 15.0,
                        ),
                    elevation: 3.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  onTapAvatarScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.avatarScreen);
  }
}
