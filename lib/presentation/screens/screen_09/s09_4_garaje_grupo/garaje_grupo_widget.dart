import '../../../componentes/cont_proxima_carrera_widget.dart';
import '../../../componentes/cont_seleccion_tipo_piloto_widget.dart';
import '../../../componentes/test_fields/cont_vista_piloto1_mv/cont_vista_piloto1_mv_widget.dart';
import '../../../componentes/test_fields/cont_vista_piloto2_mv/cont_vista_piloto2_mv_widget.dart';
import '../../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_widget.dart';
import '../../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'garaje_grupo_model.dart';
export 'garaje_grupo_model.dart';

class S094GarajeGrupoWidget extends StatefulWidget {
  const S094GarajeGrupoWidget({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'grupos_interna',
        super(key: key);

  final String rutaPagina;

  @override
  _S094GarajeGrupoWidgetState createState() => _S094GarajeGrupoWidgetState();
}

class _S094GarajeGrupoWidgetState extends State<S094GarajeGrupoWidget> {
  late S094GarajeGrupoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S094GarajeGrupoModel());

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
        title: 'S09-4_garajeGrupo',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
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
              child: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: 393.0,
                      height: 852.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 393.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.contAppBard3MvModel,
                              updateCallback: () => setState(() {}),
                              child: ContAppBard3MvWidget(),
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
                            height: 725.0,
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
                                      'GARAJE',
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
                                      0.0, 25.0, 0.0, 0.0),
                                  child: Container(
                                    width: 300.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'PILOTOS PRINCIPALES',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF060606),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                  height: 135.0,
                                  decoration: BoxDecoration(),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      wrapWithModel(
                                        model: _model.contVistaPiloto1MvModel1,
                                        updateCallback: () => setState(() {}),
                                        child: ContVistaPiloto1MvWidget(),
                                      ),
                                      wrapWithModel(
                                        model: _model.contVistaPiloto1MvModel2,
                                        updateCallback: () => setState(() {}),
                                        child: ContVistaPiloto1MvWidget(),
                                      ),
                                    ].divide(SizedBox(width: 30.0)),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: 300.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(),
                                          child: AlignedTooltip(
                                            content: Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Text(
                                                  '  En el caso de que tengas\n  algún piloto de reserva,\n  podrás realizar cambios\n  editando los pilotos y\n  estableciéndolos como\n  pilotos principales.  ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xF6F6F6F6),
                                                        fontSize: 15.0,
                                                      ),
                                                )),
                                            offset: 5.0,
                                            preferredDirection:
                                                AxisDirection.down,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            backgroundColor: Color(0xFF060606),
                                            elevation: 5.0,
                                            tailBaseWidth: 30.0,
                                            tailLength: 15.0,
                                            waitDuration:
                                                Duration(milliseconds: 100),
                                            showDuration:
                                                Duration(milliseconds: 1500),
                                            triggerMode: TooltipTriggerMode.tap,
                                            child: Icon(
                                              Icons.info_rounded,
                                              color: Color(0xFF060606),
                                              size: 25.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 160.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(),
                                          child: Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child:
                                                            ContSeleccionTipoPilotoWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              text: 'EDITAR PILOTOS',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xCDFF0007),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xF6F6F6F6),
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 10.0)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Container(
                                    width: 300.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'PILOTOS  RESERVA',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF060606),
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                  height: 165.0,
                                  decoration: BoxDecoration(),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      wrapWithModel(
                                        model: _model.contVistaPiloto2MvModel1,
                                        updateCallback: () => setState(() {}),
                                        child: ContVistaPiloto2MvWidget(),
                                      ),
                                      wrapWithModel(
                                        model: _model.contVistaPiloto2MvModel2,
                                        updateCallback: () => setState(() {}),
                                        child: ContVistaPiloto2MvWidget(),
                                      ),
                                    ].divide(SizedBox(width: 30.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                        color: Color(0xF6F6F6F6),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
