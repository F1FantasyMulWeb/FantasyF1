import 'package:go_router/go_router.dart';

import '../../../componentes/cont_anterior_carrera_widget.dart';
import '../../../componentes/cont_proxima_carrera_widget.dart';
import '../../../componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_widget.dart';
import '../../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicio_model.dart';
export 'inicio_model.dart';

class S041InicioWidget extends StatefulWidget {
  const S041InicioWidget({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'inicio',
        super(key: key);

  final String rutaPagina;

  @override
  _S041InicioWidgetState createState() => _S041InicioWidgetState();
}

class _S041InicioWidgetState extends State<S041InicioWidget> {
  late S041InicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S041InicioModel());

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
        title: 'S04-1_inicio',
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
                      height: 844.0,
                      decoration: BoxDecoration(
                        color: Color(0xF6F6F6F6),
                      ),
                      child: wrapWithModel(
                        model: _model.contMenuLateralModel,
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
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ),
                  child: Container(
                    width: 393.0,
                    height: 852.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 393.0,
                          height: 40.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contAppBard1MvModel,
                            updateCallback: () => setState(() {}),
                            child: ContAppBard1MvWidget(),
                          ),
                        ),
                        SizedBox(
                          width: 393.0,
                          child: Divider(
                            thickness: 2.0,
                            color: Color(0xFF060606),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          height: 700.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'INICIO',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'PRÓXIMA CARRERA',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF060606),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 2.0,
                                color: Color(0xFF060606),
                              ),
                              Container(
                                width: 300.0,
                                height: 100.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.contProximaCarreraModel,
                                  updateCallback: () => setState(() {}),
                                  child: ContProximaCarreraWidget(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(),
                                  child: Text(
                                    'ANTERIOR CARRERA',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF060606),
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              Divider(
                                thickness: 2.0,
                                color: Color(0xFF060606),
                              ),
                              Container(
                                width: 300.0,
                                height: 140.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.contAnteriorCarreraModel,
                                  updateCallback: () => setState(() {}),
                                  child: ContAnteriorCarreraWidget(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Container(
                                  width: 300.0,
                                  height: 35.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 175.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'MULTIJUGADOR',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF060606),
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 35.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: Color(0xFF060606),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.pushNamed('S09-1_grupos');
                                            },
                                            text: 'GRUPOS',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFF26457),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
            ),
          ),
        ));
  }
}
