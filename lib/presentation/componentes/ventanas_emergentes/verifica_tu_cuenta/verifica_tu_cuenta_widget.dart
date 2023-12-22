import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'verifica_tu_cuenta_model.dart';
export 'verifica_tu_cuenta_model.dart';

class VerificaTuCuentaWidget extends StatefulWidget {
  const VerificaTuCuentaWidget({Key? key}) : super(key: key);

  @override
  _VerificaTuCuentaWidgetState createState() => _VerificaTuCuentaWidgetState();
}

class _VerificaTuCuentaWidgetState extends State<VerificaTuCuentaWidget> {
  late VerificaTuCuentaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VerificaTuCuentaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        width: 300.0,
        height: 175.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(25.0, 15.0, 25.0, 15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 260.0,
                height: 25.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Text(
                    'VERIFICA TU CUENTA',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                width: 250.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Tienes que verificar tu cuenta mediante el enlace que te hemos enviado al correo proporcionado',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.black,
                            fontSize: 15.0,
                          ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 125.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'ACEPTAR',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Colors.black,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF6F6F6),
                          fontSize: 15.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ].divide(SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
