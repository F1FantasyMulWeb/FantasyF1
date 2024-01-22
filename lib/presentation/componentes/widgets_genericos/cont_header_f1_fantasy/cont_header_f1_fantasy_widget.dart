import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_header_f1_fantasy_model.dart';
export 'cont_header_f1_fantasy_model.dart';

class ContHeaderF1FantasyWidget extends StatefulWidget {
  const ContHeaderF1FantasyWidget({Key? key}) : super(key: key);

  @override
  _ContHeaderF1FantasyWidgetState createState() =>
      _ContHeaderF1FantasyWidgetState();
}

class _ContHeaderF1FantasyWidgetState extends State<ContHeaderF1FantasyWidget>
    with TickerProviderStateMixin {
  late ContHeaderF1FantasyModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 1500.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 1000.ms,
          duration: 2000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContHeaderF1FantasyModel());

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
      height: 205.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 120.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/logoF1F_IconoEncabezado.png',
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 300.0,
              height: 135.0,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
                    child: Text(
                      'Formula 1',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF060606),
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ).animateOnPageLoad(
                        animationsMap['textOnPageLoadAnimation1']!),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, -0.99),
                    child: Container(
                      width: 315.0,
                      height: 65.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Fantasy',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFFFF0007),
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation2']!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
