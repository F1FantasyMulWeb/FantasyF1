import '../../../componentes/cont_acciones_internas_grupo_widget.dart';
import '../../../componentes/cont_apartados_internos_grupo_widget.dart';
import '../../../componentes/cont_info_interna_grupo_widget.dart';
import '../../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_widget.dart';
import '../../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mercado_pilotos_grupo_model.dart';
export 'mercado_pilotos_grupo_model.dart';

class S095MercadoPilotosGrupoWidget extends StatefulWidget {
  const S095MercadoPilotosGrupoWidget({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'grupos_interna',
        super(key: key);

  final String rutaPagina;

  @override
  _S095MercadoPilotosGrupoWidgetState createState() =>
      _S095MercadoPilotosGrupoWidgetState();
}

class _S095MercadoPilotosGrupoWidgetState
    extends State<S095MercadoPilotosGrupoWidget> {
  late S095MercadoPilotosGrupoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S095MercadoPilotosGrupoModel());

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
        title: 'S09-5_mercadoPilotosGrupo',
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          height: 175.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contInfoInternaGrupoModel,
                            updateCallback: () => setState(() {}),
                            child: ContInfoInternaGrupoWidget(),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          height: 45.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contAccionesInternasGrupoModel,
                            updateCallback: () => setState(() {}),
                            child: ContAccionesInternasGrupoWidget(
                              esAdminGrupo: true,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          height: 420.0,
                          decoration: BoxDecoration(),
                          child: wrapWithModel(
                            model: _model.contApartadosInternosGrupoModel,
                            updateCallback: () => setState(() {}),
                            child: ContApartadosInternosGrupoWidget(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
