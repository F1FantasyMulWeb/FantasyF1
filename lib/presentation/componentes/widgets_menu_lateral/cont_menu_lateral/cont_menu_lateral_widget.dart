import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../provider/usermodel.dart';
import '../../../../routes/app_routes.dart';
import '../cont_encabezado_menu/cont_encabezado_menu_widget.dart';
import '../cont_opciones_cuenta_mv/cont_opciones_cuenta_mv_widget.dart';
import '../cont_opciones_cuenta_pc/cont_opciones_cuenta_pc_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cont_menu_lateral_model.dart';
export 'cont_menu_lateral_model.dart';

class ContMenuLateralWidget extends ConsumerStatefulWidget {
  const ContMenuLateralWidget({
    Key? key,
    this.rutaPagina,
  }) : super(key: key);

  final String? rutaPagina;

  @override
  ConsumerState<ContMenuLateralWidget> createState() => _ContMenuLateralWidgetState();
}

class _ContMenuLateralWidgetState extends ConsumerState<ContMenuLateralWidget> {
  late ContMenuLateralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContMenuLateralModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          SingleChildScrollView(
          child:Container(
            width: 300.0,
            height: 852.0,
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                child:Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.contEncabezadoMenuModel1,
                    updateCallback: () => setState(() {}),
                    child: ContEncabezadoMenuWidget(
                      paginaActual: widget.rutaPagina!,
                    ),
                  ),
                ),),
                const Divider(
                  thickness: 2.0,
                  color: Color(0xFF060606),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Container(
                    width: 260.0,
                    height: 745.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered1 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'inicio') {
                                    return;
                                  }

                                  onTapMainScreen(context);
                                  return;
                                },
                                text: 'INICIO',
                                icon: const Icon(
                                  Icons.home_rounded,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 125.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered1! ||
                                            (widget.rutaPagina == 'inicio_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered1! ||
                                              (widget.rutaPagina == 'inicio_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: BoxDecoration(),
                          child: Text(
                            'INFORMACION',
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered2 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'campeonatos') {
                                    return;
                                  }

                                  onTapCampeonatoScreen(context);

                                  return;
                                },
                                text: 'CAMPEONATOS',
                                icon: const Icon(
                                  Icons.workspace_premium_outlined,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 45.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered2! ||
                                            (widget.rutaPagina ==
                                                'campeonatos_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered2! ||
                                              (widget.rutaPagina ==
                                                  'campeonatos_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered3 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered3 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'circuitos') {
                                    return;
                                  }

                                  onTaplistaCircuitos(context);

                                  return;
                                },
                                text: 'CIRCUITOS',
                                icon: const Icon(
                                  Icons.add_road,
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 90.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered3! ||
                                            (widget.rutaPagina ==
                                                'circuitos_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered3! ||
                                              (widget.rutaPagina ==
                                                  'circuitos_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered4 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered4 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'escuderias') {
                                    return;
                                  }

                                  //context.pushNamed('S07-1_escuderias');

                                  return;
                                },
                                text: 'ESCUDERÍAS',
                                icon: const Icon(
                                  Icons.build_rounded,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 75.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered4! ||
                                            (widget.rutaPagina ==
                                                'escuderias_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered4! ||
                                              (widget.rutaPagina ==
                                                  'escuderias_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered5 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered5 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'pilotos') {
                                    return;
                                  }

                                  onTaplistaPilotos(context);

                                  return;
                                },
                                text: 'PILOTOS',
                                icon: const Icon(
                                  Icons.man_sharp,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 110.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered5! ||
                                            (widget.rutaPagina == 'pilotos_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: const Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered5! ||
                                              (widget.rutaPagina ==
                                                  'pilotos_Mv')
                                          ? const Color(0xFFF26457)
                                          : const Color(0xFF060606),
                                      const Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: const BoxDecoration(),
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered6 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered6 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'grupos') {
                                    return;
                                  }

                                  onTapGrupos(context);

                                  return;
                                },
                                text: 'GRUPOS',
                                icon: const Icon(
                                  Icons.groups_sharp,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 115.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered6! ||
                                            (widget.rutaPagina == 'grupos') ||
                                            (widget.rutaPagina ==
                                                'grupos_interna')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered6! ||
                                              (widget.rutaPagina == 'grupos') ||
                                              (widget.rutaPagina ==
                                                  'grupos_interna')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: BoxDecoration(),
                          child: Text(
                            'TUTORIALES',
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 80.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered7 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered7 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'comoJugar') {
                                    return;
                                  }

                                  //context.pushNamed('S10-1_comoJugar_Mv');

                                  return;
                                },
                                text: 'COMO JUGAR',
                                icon: const Icon(
                                  Icons.videogame_asset,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 65.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered7! ||
                                            (widget.rutaPagina ==
                                                'comoJugar_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered7! ||
                                              (widget.rutaPagina ==
                                                  'comoJugar_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 175.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contOpcionesCuentaMvModel,
                            updateCallback: () => setState(() {}),
                            child: ContOpcionesCuentaMvWidget(
                              paginaActual: widget.rutaPagina!,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 0.0)),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 0.0)),
            ),
          ),),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: 300.0,
            height: 900.0,
            decoration: const BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 300.0,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.contEncabezadoMenuModel2,
                    updateCallback: () => setState(() {}),
                    child: ContEncabezadoMenuWidget(
                      paginaActual: widget.rutaPagina!,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2.0,
                  color: Color(0xFF060606),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 25.0),
                  child: Container(
                    width: 260.0,
                    height: 795.0,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered8 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered8 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'inicio_Mv') {
                                    return;
                                  }
                                  onTapMainScreen(context);
                                  return;
                                },
                                text: 'INICIO',
                                icon: const Icon(
                                  Icons.home_rounded,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 125.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered8! ||
                                            (widget.rutaPagina == 'inicio_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered8! ||
                                              (widget.rutaPagina == 'inicio_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: BoxDecoration(),
                          child: Text(
                            'INFORMACION',
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered9 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered9 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'campeonatos_Mv') {
                                    return;
                                  }

                                  onTapCampeonatoScreen(context);

                                  return;
                                },
                                text: 'CAMPEONATOS',
                                icon: const Icon(
                                  Icons.workspace_premium_outlined,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 45.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered9! ||
                                            (widget.rutaPagina ==
                                                'campeonatos_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered9! ||
                                              (widget.rutaPagina ==
                                                  'campeonatos_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered10 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered10 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'circuitos_Mv') {
                                    return;
                                  }

                                  onTaplistaCircuitos(context);

                                  return;
                                },
                                text: 'CIRCUITOS',
                                icon: const Icon(
                                  Icons.add_road,
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 90.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered10! ||
                                            (widget.rutaPagina ==
                                                'circuitos_Mv')
                                        ? const Color(0xFFF26457)
                                        : const Color(0xCDFFFFFF),
                                    const Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered10! ||
                                              (widget.rutaPagina ==
                                                  'circuitos_Mv')
                                          ? const Color(0xFFF26457)
                                          : const Color(0xFF060606),
                                      const Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered11 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered11 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'escuderias_Mv') {
                                    return;
                                  }

                                  //context.pushNamed('S07-1_escuderias');

                                  return;
                                },
                                text: 'ESCUDERÍAS',
                                icon: const Icon(
                                  Icons.build_rounded,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 75.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered11! ||
                                            (widget.rutaPagina ==
                                                'escuderias_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered11! ||
                                              (widget.rutaPagina ==
                                                  'escuderias_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered12 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered12 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'pilotos_Mv') {
                                    return;
                                  }

                                  onTaplistaPilotos(context);

                                  return;
                                },
                                text: 'PILOTOS',
                                icon: const Icon(
                                  Icons.man_sharp,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 110.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered12! ||
                                            (widget.rutaPagina == 'pilotos_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered12! ||
                                              (widget.rutaPagina ==
                                                  'pilotos_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: BoxDecoration(),
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 15.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered13 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered13 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'grupos_Mv') {
                                    return;
                                  }

                                  onTapGrupos(context);

                                  return;
                                },
                                text: 'GRUPOS',
                                icon: const Icon(
                                  Icons.groups_sharp,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 115.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered13! ||
                                            (widget.rutaPagina == 'grupos') ||
                                            (widget.rutaPagina ==
                                                'grupos_interna')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered13! ||
                                              (widget.rutaPagina == 'grupos') ||
                                              (widget.rutaPagina ==
                                                  'grupos_interna')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 25.0,
                          decoration: const BoxDecoration(),
                          child: Text(
                            'TUTORIALES',
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
                        const Divider(
                          thickness: 2.0,
                          color: Color(0xFF060606),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 80.0),
                          child: Container(
                            width: 260.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered14 = true);
                              }),
                              onExit: ((event) async {
                                setState(
                                    () => _model.mouseRegionHovered14 = false);
                              }),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  if (widget.rutaPagina == 'comoJugar_Mv') {
                                    return;
                                  }

                                  //context.pushNamed('S10-1_comoJugar_Mv');

                                  return;
                                },
                                text: 'COMO JUGAR',
                                icon: const Icon(
                                  Icons.videogame_asset,
                                  color: Color(0xFF060606),
                                  size: 25.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 65.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: valueOrDefault<Color>(
                                    _model.mouseRegionHovered14! ||
                                            (widget.rutaPagina ==
                                                'comoJugar_Mv')
                                        ? Color(0xFFF26457)
                                        : Color(0xCDFFFFFF),
                                    Color(0xCDFFFFFF),
                                  ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF060606),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: valueOrDefault<Color>(
                                      _model.mouseRegionHovered14! ||
                                              (widget.rutaPagina ==
                                                  'comoJugar_Mv')
                                          ? Color(0xFFF26457)
                                          : Color(0xFF060606),
                                      Color(0xFF060606),
                                    ),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 260.0,
                          height: 225.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contOpcionesCuentaPcModel,
                            updateCallback: () => setState(() {}),
                            child: ContOpcionesCuentaPcWidget(),
                          ),
                        ),
                      ].divide(const SizedBox(height: 0.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 0.0)),
            ),
          ),
      ],
    );
  }

  onTapAvatarScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.avatarScreen);
  }

  onTaplistaPilotos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaPilotosScreen);
  }

  onTaplistaCircuitos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaCircuitosScreen);
  }

  onTapGrupos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaGruposScreen);
  }

  onTapMainScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainscreensinligasScreen);
  }
  onTapCampeonatoScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.campeonatosScreen);
  }
}
