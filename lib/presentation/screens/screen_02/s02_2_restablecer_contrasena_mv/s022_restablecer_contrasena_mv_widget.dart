import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_genericos/cont_header_f1_fantasy/cont_header_f1_fantasy_widget.dart';
import '/pages/componentes/widgets_s2/cont_restablecer_contrasena/cont_restablecer_contrasena_widget.dart';
import '/pages/componentes_internos/widgets_s01/carrusel_s01/carrusel_s01_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 's022_restablecer_contrasena_mv_model.dart';
export 's022_restablecer_contrasena_mv_model.dart';

class S022RestablecerContrasenaMvWidget extends StatefulWidget {
  const S022RestablecerContrasenaMvWidget({Key? key}) : super(key: key);

  @override
  _S022RestablecerContrasenaMvWidgetState createState() =>
      _S022RestablecerContrasenaMvWidgetState();
}

class _S022RestablecerContrasenaMvWidgetState
    extends State<S022RestablecerContrasenaMvWidget> {
  late S022RestablecerContrasenaMvModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S022RestablecerContrasenaMvModel());

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
        title: 'S02-2_restablecerContrasena_Mv',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF6F6F6),
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
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300.0,
                                height: 205.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: wrapWithModel(
                                  model: _model.contHeaderF1FantasyModel1,
                                  updateCallback: () => setState(() {}),
                                  child: ContHeaderF1FantasyWidget(),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                height: 350.0,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.contRestablecerContrasenaModel1,
                                  updateCallback: () => setState(() {}),
                                  child: ContRestablecerContrasenaWidget(),
                                ),
                              ),
                            ],
                          ),
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
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 25.0, 40.0, 25.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 400.0,
                              height: 900.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 0.0, 25.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 50.0),
                                        child: Container(
                                          width: 300.0,
                                          height: 205.0,
                                          decoration: BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model
                                                .contHeaderF1FantasyModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: ContHeaderF1FantasyWidget(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 300.0,
                                        height: 500.0,
                                        decoration: BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model
                                              .contRestablecerContrasenaModel2,
                                          updateCallback: () => setState(() {}),
                                          child:
                                              ContRestablecerContrasenaWidget(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 950.0,
                              height: 900.0,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.carruselS01Model,
                                updateCallback: () => setState(() {}),
                                child: CarruselS01Widget(
                                  indiceInicio: 11,
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
          ),
        ));
  }
}
