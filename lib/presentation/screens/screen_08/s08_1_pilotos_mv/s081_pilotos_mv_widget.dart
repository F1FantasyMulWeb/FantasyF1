import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '/pages/componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 's081_pilotos_mv_model.dart';
export 's081_pilotos_mv_model.dart';

class S081PilotosMvWidget extends StatefulWidget {
  const S081PilotosMvWidget({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'pilotos',
        super(key: key);

  final String rutaPagina;

  @override
  _S081PilotosMvWidgetState createState() => _S081PilotosMvWidgetState();
}

class _S081PilotosMvWidgetState extends State<S081PilotosMvWidget> {
  late S081PilotosMvModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S081PilotosMvModel());

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
        title: 'S08-1_pilotos_Mv',
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
                  child: wrapWithModel(
                    model: _model.contMenuLateralModel,
                    updateCallback: () => setState(() {}),
                    child: ContMenuLateralWidget(
                      rutaPagina: widget.rutaPagina,
                    ),
                  ),
                ),
              ),
              body: SafeArea(
                top: true,
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
                      wrapWithModel(
                        model: _model.contAppBard2MvModel,
                        updateCallback: () => setState(() {}),
                        child: ContAppBard2MvWidget(),
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
                        height: 750.0,
                        decoration: BoxDecoration(),
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
