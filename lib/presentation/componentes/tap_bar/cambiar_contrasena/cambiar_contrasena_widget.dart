import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cambiar_contrasena_model.dart';
export 'cambiar_contrasena_model.dart';

class CambiarContrasenaWidget extends StatefulWidget {
  const CambiarContrasenaWidget({Key? key}) : super(key: key);

  @override
  _CambiarContrasenaWidgetState createState() =>
      _CambiarContrasenaWidgetState();
}

class _CambiarContrasenaWidgetState extends State<CambiarContrasenaWidget>
    with TickerProviderStateMixin {
  late CambiarContrasenaModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 400.ms,
          begin: Offset(0.0, 80.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.0, 1.0),
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
    _model = createModel(context, () => CambiarContrasenaModel());

    _model.textFieldCorreoCambiarContrasenaController ??=
        TextEditingController();
    _model.textFieldCorreoCambiarContrasenaFocusNode ??= FocusNode();

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
        height: 225.0,
        decoration: BoxDecoration(
          color: Color(0xFFF6F6F6),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
              child: Container(
                width: 300.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: AutoSizeText(
                    'Introduce tu correo electrónico\n y te enviaremos un enlace para que\n vuelvas a entrar en tu cuenta.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF060606),
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
              child: Container(
                width: 300.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Container(
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: TextFormField(
                        controller:
                            _model.textFieldCorreoCambiarContrasenaController,
                        focusNode:
                            _model.textFieldCorreoCambiarContrasenaFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.textFieldCorreoCambiarContrasenaController',
                          Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        textCapitalization: TextCapitalization.none,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Correo electrónico',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 15.0,
                                  ),
                          alignLabelWithHint: true,
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 15.0,
                                  ),
                          errorStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFFFF0007),
                                    fontSize: 10.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF060606),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF060606),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF060606),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF060606),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 25.0, 0.0),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 25.0,
                          ),
                          suffixIcon: _model
                                  .textFieldCorreoCambiarContrasenaController!
                                  .text
                                  .isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model
                                        .textFieldCorreoCambiarContrasenaController
                                        ?.clear();
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: Color(0xFF060606),
                                    size: 25.0,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0xFF060606),
                              fontSize: 13.0,
                            ),
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Colors.black,
                        validator: _model
                            .textFieldCorreoCambiarContrasenaControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
              child: Container(
                width: 300.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F6F6),
                ),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Boton_EnviarEnlace pressed ...');
                  },
                  text: 'ENVIAR ENLACE',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFF26457),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontSize: 15.0,
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
            ),
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
