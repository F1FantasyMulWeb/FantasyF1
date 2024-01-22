import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_vista_piloto2_mv_model.dart';
export 'cont_vista_piloto2_mv_model.dart';

class ContVistaPiloto2MvWidget extends StatefulWidget {
  const ContVistaPiloto2MvWidget({Key? key}) : super(key: key);

  @override
  _ContVistaPiloto2MvWidgetState createState() =>
      _ContVistaPiloto2MvWidgetState();
}

class _ContVistaPiloto2MvWidgetState extends State<ContVistaPiloto2MvWidget> {
  late ContVistaPiloto2MvModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContVistaPiloto2MvModel());

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
      child: Material(
        color: Colors.transparent,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: 135.0,
          height: 165.0,
          decoration: BoxDecoration(
            color: _model.colorFondo,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Color(0xFF060606),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/imagenPiloto_Default.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 125.0,
                  height: 35.0,
                  decoration: BoxDecoration(),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Boton_InfoPiloto pressed ...');
                    },
                    text: 'INFO',
                    icon: Icon(
                      Icons.leaderboard_rounded,
                      color: Color(0xFFF6F6F6),
                      size: 20.0,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF060606),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFFF6F6F6),
                                fontSize: 20.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 10.0)),
            ),
          ),
        ),
      ),
    );
  }
}
