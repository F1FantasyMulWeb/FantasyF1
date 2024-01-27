import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_vista_piloto1_mv_model.dart';
export 'cont_vista_piloto1_mv_model.dart';

class ContVistaPiloto1MvWidget extends StatefulWidget {
  //const ContVistaPiloto1MvWidget({Key? key}) : super(key: key);

  String? pilotoId;
  ContVistaPiloto1MvWidget.piloto(
      {required this.pilotoId});

  @override
  _ContVistaPiloto1MvWidgetState createState() =>
      _ContVistaPiloto1MvWidgetState();
}

class _ContVistaPiloto1MvWidgetState extends State<ContVistaPiloto1MvWidget> {
  late ContVistaPiloto1MvModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContVistaPiloto1MvModel());

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
          height: 135.0,
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
              children: [
                Container(
                  width: 125.0,
                  height: 115.0,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                    child: Stack(
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
                        Align(
                          alignment: AlignmentDirectional(0.92, 1.3),
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 25.0,
                              fillColor: Color(0xFF060606),
                              icon: Icon(
                                Icons.leaderboard_rounded,
                                color: Color(0xFFF6F6F6),
                                size: 25.0,
                              ),
                              onPressed: () {
                                print('Boton_Info pressed ...');
                              },
                            ),
                          ),
                        ),
                      ],
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
