import '../../../../flutter_flow/flutter_flow_theme.dart';
import '../../../../flutter_flow/flutter_flow_util.dart';
import '../../../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_lateral_main_no_usar_model.dart';
export 'menu_lateral_main_no_usar_model.dart';

class MenuLateralMainNoUsarWidget extends StatefulWidget {
  const MenuLateralMainNoUsarWidget({Key? key}) : super(key: key);

  @override
  _MenuLateralMainNoUsarWidgetState createState() =>
      _MenuLateralMainNoUsarWidgetState();
}

class _MenuLateralMainNoUsarWidgetState
    extends State<MenuLateralMainNoUsarWidget> {
  late MenuLateralMainNoUsarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuLateralMainNoUsarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 852.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 30.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 285.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 85.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
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
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Button',
                        icon: Icon(
                          Icons.close_rounded,
                          color: Color(0xFF060606),
                          size: 40.0,
                        ),
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0x40FFFFFF),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 150.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
