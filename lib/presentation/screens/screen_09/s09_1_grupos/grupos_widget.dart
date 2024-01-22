import 'package:go_router/go_router.dart';

import '../../../componentes/test_fields/vista_grupo/vista_grupo_widget.dart';
import '../../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '../../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'grupos_model.dart';
export 'grupos_model.dart';

class S091GruposWidget extends StatefulWidget {
  const S091GruposWidget({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'grupos',
        super(key: key);

  final String rutaPagina;

  @override
  _S091GruposWidgetState createState() => _S091GruposWidgetState();
}

class _S091GruposWidgetState extends State<S091GruposWidget> {
  late S091GruposModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S091GruposModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Title(
        title: 'S09-1_grupos',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: Color(0xFFF6F6F6),
              drawer: Container(
                width: 300.0,
                child: Drawer(
                  elevation: 16.0,
                  child: Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Container(
                      width: 300.0,
                      height: 852.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                      ),
                      child: wrapWithModel(
                        model: _model.contMenuLateralModel1,
                        updateCallback: () => setState(() {}),
                        child: ContMenuLateralWidget(
                          rutaPagina: widget.rutaPagina,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              body: SafeArea(
                top: true,
                child: Stack(
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                        child: Container(
                          width: 393.0,
                          height: 852.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.contAppBard2MvModel,
                                  updateCallback: () => setState(() {}),
                                  child: ContAppBard2MvWidget(),
                                ),
                              ),
                              SizedBox(
                                width: 393.0,
                                child: Divider(
                                  thickness: 2.0,
                                  color: Color(0xFF060606),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 15.0),
                                child: Container(
                                  width: 300.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'GRUPOS',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF060606),
                                          fontSize: 50.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                height: 45.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 145.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: FFButtonWidget(
                                        onPressed: () async {},
                                        text: 'UNIRSE GRUPO',
                                        icon: Icon(
                                          Icons.search_sharp,
                                          color: Color(0xFFF6F6F6),
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF060606),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
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
                                    Container(
                                      width: 145.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: FFButtonWidget(
                                        onPressed: () async {},
                                        text: 'CREAR GRUPO',
                                        icon: Icon(
                                          Icons.add_circle_outline,
                                          color: Color(0xFFF6F6F6),
                                          size: 20.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 40.0,
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFF060606),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFF6F6F6),
                                                    fontSize: 12.0,
                                                  ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 10.0)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 550.0,
                                  decoration: BoxDecoration(),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context
                                              .pushNamed('S09-2_inicioGrupo');
                                        },
                                        child: wrapWithModel(
                                          model: _model.vistaGrupoModel,
                                          updateCallback: () => setState(() {}),
                                          child: VistaGrupoWidget(nombreGrupo: '', cantidadJugadores: 0, onTap: () {  },),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Container(
                        width: 1440.0,
                        height: 900.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 300.0,
                              height: 900.0,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.contMenuLateralModel2,
                                updateCallback: () => setState(() {}),
                                child: ContMenuLateralWidget(
                                  rutaPagina: widget.rutaPagina,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 900.0,
                              child: VerticalDivider(
                                thickness: 2.0,
                                color: Color(0xFF060606),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  25.0, 55.0, 50.0, 30.0),
                              child: Container(
                                width: 1050.0,
                                height: 815.0,
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
