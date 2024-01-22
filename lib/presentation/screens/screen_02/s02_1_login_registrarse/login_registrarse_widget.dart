import '../../../componentes/widgets_genericos/cont_header_f1_fantasy/cont_header_f1_fantasy_widget.dart';
import '../../../componentes/widgets_s01/carrusel_s01/carrusel_s01_widget.dart';
import '../../../componentes/widgets_s2/cont_iniciar_sesion_registrarse/cont_iniciar_sesion_registrarse_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_registrarse_model.dart';
export 'login_registrarse_model.dart';

class S021LoginRegistrarseWidget extends StatefulWidget {
  const S021LoginRegistrarseWidget({Key? key}) : super(key: key);

  @override
  _S021LoginRegistrarseWidgetState createState() =>
      _S021LoginRegistrarseWidgetState();
}

class _S021LoginRegistrarseWidgetState
    extends State<S021LoginRegistrarseWidget> {
  late S021LoginRegistrarseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S021LoginRegistrarseModel());

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
        title: 'S02-1_loginRegistrarse',
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
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.contHeaderF1FantasyModel1,
                                    updateCallback: () => setState(() {}),
                                    child: ContHeaderF1FantasyWidget(),
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 500.0,
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model
                                        .contIniciarSesionRegistrarseModel1,
                                    updateCallback: () => setState(() {}),
                                    child: ContIniciarSesionRegistrarseWidget(),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                              child:
                                                  ContHeaderF1FantasyWidget(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 300.0,
                                          height: 500.0,
                                          decoration: BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model
                                                .contIniciarSesionRegistrarseModel2,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                ContIniciarSesionRegistrarseWidget(),
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
                                    indiceInicio: 6,
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
          ),
        ));
  }
}
