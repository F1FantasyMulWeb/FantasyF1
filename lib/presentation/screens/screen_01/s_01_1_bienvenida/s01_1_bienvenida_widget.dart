import '../../../componentes/widgets_s01/carrusel_s01/carrusel_s01_widget.dart';
import '../../../componentes/widgets_s01/cont_bienvenida/cont_bienvenida_widget.dart';
import '../../../componentes/widgets_s01/cont_info_app/cont_info_app_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bienvenida_app_model.dart';
export 'bienvenida_app_model.dart';

class S011BienvenidaWidget extends StatefulWidget {
  const S011BienvenidaWidget({Key? key}) : super(key: key);

  @override
  _S011BienvenidaWidgetState createState() => _S011BienvenidaWidgetState();
}

class _S011BienvenidaWidgetState extends State<S011BienvenidaWidget> {
  late S011BienvenidaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S011BienvenidaModel());

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
        title: 'Bienvenida',
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
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width,
                                height: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).height,
                                  900.0,
                                ),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: Image.asset(
                                    'assets/images/s_bienvenida/fondo_bienvenida.jpg',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.5, 0.0),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(1.0, -1.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        decoration: BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model.contInfoAppModel1,
                                          updateCallback: () => setState(() {}),
                                          child: ContInfoAppWidget(),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.75,
                                        decoration: BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model.contBienvenidaModel1,
                                          updateCallback: () => setState(() {}),
                                          child: ContBienvenidaWidget(),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.1)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Wrap(
                        spacing: 0.0,
                        runSpacing: 0.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: MediaQuery.sizeOf(context).height,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  height: MediaQuery.sizeOf(context).height,
                                  decoration: BoxDecoration(
                                    color: Color(0xF6F6F6F6),
                                  ),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width *
                                              0.37,
                                          710.0,
                                        ),
                                        height: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).height,
                                          1080.0,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/s_bienvenida/fondo_bienvenida.jpg',
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.none,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 50.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.17,
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.contInfoAppModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ContInfoAppWidget(),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                                .width <=
                                                            1920.0
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.2)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.15),
                                                decoration: BoxDecoration(),
                                                child: wrapWithModel(
                                                  model: _model
                                                      .contBienvenidaModel2,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: ContBienvenidaWidget(),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(
                                              height: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).height *
                                                0.075,
                                            75.0,
                                          ))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width * 0.6,
                                    1152.0,
                                  ),
                                  height: valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).height,
                                    1080.0,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: wrapWithModel(
                                    model: _model.carruselS01Model,
                                    updateCallback: () => setState(() {}),
                                    child: CarruselS01Widget(
                                      indiceInicio: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
