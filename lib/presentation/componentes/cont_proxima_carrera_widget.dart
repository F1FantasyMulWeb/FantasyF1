import 'package:FantasyF1/api/configuracionApi.dart';
import 'package:FantasyF1/api/modelo/RaceEventModel.dart';
import 'package:FantasyF1/api/modelo/RaceScheduleModel.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_proxima_carrera_model.dart';
export 'cont_proxima_carrera_model.dart';

class ContProximaCarreraWidget extends StatefulWidget {
  const ContProximaCarreraWidget({Key? key}) : super(key: key);

  @override
  _ContProximaCarreraWidgetState createState() =>
      _ContProximaCarreraWidgetState();
}

class _ContProximaCarreraWidgetState extends State<ContProximaCarreraWidget> {
  late ContProximaCarreraModel _model;
  Race? _circuit;
  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContProximaCarreraModel());
    getNextCarrera();
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
        width: 300.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Color(0xFF060606),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/imageCircuito_Default.png',
                    width: 75.0,
                    height: 75.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 165.0,
                height: 80.0,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 165.0,
                      height: 45.0,
                      decoration: BoxDecoration(),
                      child: AutoSizeText(
                        _circuit?.raceName ?? 'Cargando...',
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF060606),
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Container(
                      width: 165.0,
                      height: 25.0,
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 60.0,
                            height: 25.0,
                            decoration: BoxDecoration(),
                            child: Text(
                              'Fecha: ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 25.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 2.0, 0.0, 0.0),
                              child: Text(
                                _circuit?.date.toString() ?? 'Cargando...',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Color(0xFFFF0007),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ].divide(SizedBox(width: 15.0)),
          ),
        ),
      ),
    );
  }

  Future<void> getNextCarrera() async {
    Client client = new Client();

    RaceEventModel? raceEventModel = await client
        .getResults("current", "22", "results", queryParams: "limit=20");
    setState(() {   _circuit = raceEventModel!.mrData.raceTable.races.last;});
    _model.onUpdate();

  }
}
