import 'package:go_router/go_router.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_app_bard3_mv_model.dart';
export 'cont_app_bard3_mv_model.dart';

class ContAppBard3MvWidget extends StatefulWidget {
  const ContAppBard3MvWidget({Key? key}) : super(key: key);

  @override
  _ContAppBard3MvWidgetState createState() => _ContAppBard3MvWidgetState();
}

class _ContAppBard3MvWidgetState extends State<ContAppBard3MvWidget> {
  late ContAppBard3MvModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContAppBard3MvModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: 393.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 120.0,
                height: 40.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: Icon(
                          Icons.home_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('S04-1_inicio');
                        },
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: Icon(
                          Icons.keyboard_return_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logoF1F_IconoEncabezado.png',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(115.0, 0.0, 10.0, 0.0),
              child: Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('S11-1_miCuenta_Mv');
                  },
                  child: Container(
                    width: 70.0,
                    height: 70.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
