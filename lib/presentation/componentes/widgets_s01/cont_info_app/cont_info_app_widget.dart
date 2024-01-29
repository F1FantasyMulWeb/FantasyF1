import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_info_app_model.dart';
export 'cont_info_app_model.dart';

class ContInfoAppWidget extends StatefulWidget {
  const ContInfoAppWidget({Key? key}) : super(key: key);

  @override
  _ContInfoAppWidgetState createState() => _ContInfoAppWidgetState();
}

class _ContInfoAppWidgetState extends State<ContInfoAppWidget> {
  late ContInfoAppModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContInfoAppModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              Container(
                width: MediaQuery.sizeOf(context).width * 0.5,
                decoration: const BoxDecoration(
                  color: Color(0xCDFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Text(
                          'BETA | v.1.17.03.01',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Text(
                          'V. DE MUESTRA | 29-01-24',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 13.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(height: 0.0)),
                  ),
                ),
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
                width: MediaQuery.sizeOf(context).width <= 1920.0
                    ? (MediaQuery.sizeOf(context).width * 0.15)
                    : (MediaQuery.sizeOf(context).width * 0.15),
                decoration: const BoxDecoration(
                  color: Color(0xCDFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(20.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Text(
                          '[]',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Text(
                          '[]',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 15.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(height: 0.0)),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
