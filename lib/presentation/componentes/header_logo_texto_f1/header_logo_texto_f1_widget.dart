import '../../../flutter_flow/flutter_flow_animations.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import '../../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_logo_texto_f1_model.dart';
export 'header_logo_texto_f1_model.dart';

class HeaderLogoTextoF1Widget extends StatefulWidget {
  const HeaderLogoTextoF1Widget({Key? key}) : super(key: key);

  @override
  _HeaderLogoTextoF1WidgetState createState() =>
      _HeaderLogoTextoF1WidgetState();
}

class _HeaderLogoTextoF1WidgetState extends State<HeaderLogoTextoF1Widget>
    with TickerProviderStateMixin {
  late HeaderLogoTextoF1Model _model;

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
          delay: 1000.ms,
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
          delay: 1500.ms,
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
    _model = createModel(context, () => HeaderLogoTextoF1Model());

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
        height: 190.0,
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
              decoration: const BoxDecoration(
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
                width: 315.0,
                height: 120.0,
                decoration: const BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.2),
                      child: Container(
                        width: 315.0,
                        height: 55.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Formula 1',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFFF0007),
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation1']!),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.84),
                      child: Container(
                        width: 315.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Fantasy',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
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
      ),
    );
  }
}
