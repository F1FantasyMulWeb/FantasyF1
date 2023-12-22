import '../../../flutter_flow/flutter_flow_theme.dart';
import '../../../flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../componentes/serigrafia/contenedor_info_app/contenedor_info_app_widget.dart';
import '../../componentes/serigrafia/contenedor_pre_login/contenedor_pre_login_widget.dart';
import 's11_pre_login_model.dart';
export 's11_pre_login_model.dart';

class S11PreLoginWidget extends StatefulWidget {
  const S11PreLoginWidget({Key? key}) : super(key: key);

  @override
  State<S11PreLoginWidget> createState() => _S11PreLoginWidgetState();
}

class _S11PreLoginWidgetState extends State<S11PreLoginWidget> {
  late S11PreLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S11PreLoginModel());

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

    return GestureDetector(
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
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ),
              child: Stack(
                children: [
                  Container(
                    width: 393.0,
                    height: 805.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/fondo_PreLogin_Movil.jpg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Container(
                            width: 240.0,
                            height: 55.0,
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.infoAppModel,
                              updateCallback: () => setState(() {}),
                              child: ContenedorInfoAppWidget(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: Container(
                              width: 340.0,
                              height: 250.0,
                              decoration: BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.contenedorBienvenidaModel,
                                updateCallback: () => setState(() {}),
                                child: const ContenedorPreLoginWidget(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 85.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                        child: AlignedTooltip(
                          content: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                'La imagen de fondo\nha sido generada con\nla IA de DALL·E 2',
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 15.0,
                                    ),
                              )),
                          offset: 4.0,
                          preferredDirection: AxisDirection.down,
                          borderRadius: BorderRadius.circular(8.0),
                          elevation: 4.0,
                          tailBaseWidth: 24.0,
                          tailLength: 12.0,
                          waitDuration: Duration(milliseconds: 100),
                          showDuration: Duration(milliseconds: 1500),
                          triggerMode: TooltipTriggerMode.tap,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                              topLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                            ),
                            child: Image.asset(
                              'assets/images/logo_Dall-e.png',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
