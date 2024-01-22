
import 'package:go_router/go_router.dart';

import '../../../../DataBase/tables/listado_usuarios_app.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cont_iniciar_sesion_registrarse_model.dart';
export 'cont_iniciar_sesion_registrarse_model.dart';

class ContIniciarSesionRegistrarseWidget extends StatefulWidget {
  const ContIniciarSesionRegistrarseWidget({Key? key}) : super(key: key);

  @override
  _ContIniciarSesionRegistrarseWidgetState createState() =>
      _ContIniciarSesionRegistrarseWidgetState();
}

class _ContIniciarSesionRegistrarseWidgetState
    extends State<ContIniciarSesionRegistrarseWidget>
    with TickerProviderStateMixin {
  late ContIniciarSesionRegistrarseModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
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
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 20.0),
          end: Offset(0.0, 0.0),
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
    _model = createModel(context, () => ContIniciarSesionRegistrarseModel());

    _model.tabBarIniciarSesionRegistrarseController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.textFieldCorreoLoginController ??= TextEditingController();
    _model.textFieldCorreoLoginFocusNode ??= FocusNode();

    _model.textFieldContrasenaLoginController ??= TextEditingController();
    _model.textFieldContrasenaLoginFocusNode ??= FocusNode();

    _model.textFieldCorreoRegistrarseController ??= TextEditingController();
    _model.textFieldCorreoRegistrarseFocusNode ??= FocusNode();

    _model.textFieldContrasenaRegistrarseController ??= TextEditingController();
    _model.textFieldContrasenaRegistrarseFocusNode ??= FocusNode();

    _model.textFieldRepetirContrasenaRegistrarseController ??=
        TextEditingController();
    _model.textFieldRepetirContrasenaRegistrarseFocusNode ??= FocusNode();

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
      height: 450.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment(0.0, 0),
            child: TabBar(
              labelColor: Color(0xFF060606),
              unselectedLabelColor: Color(0xFFADB6BF),
              labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Inter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
              unselectedLabelStyle: TextStyle(),
              indicatorColor: Color(0xCDFF0007),
              indicatorWeight: 3.0,
              tabs: [
                Tab(
                  text: 'INICIAR SESIÓN',
                ),
                Tab(
                  text: 'REGISTRARSE',
                ),
              ],
              controller: _model.tabBarIniciarSesionRegistrarseController,
              onTap: (i) async {
                [() async {}, () async {}][i]();
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _model.tabBarIniciarSesionRegistrarseController,
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Container(
                            width: 300.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: AutoSizeText(
                              'Complete los campos a continuación\npara acceder a su cuenta',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Color(0xFF060606),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          height: 145.0,
                          decoration: BoxDecoration(),
                          child: Form(
                            key: _model.formKey1,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 300.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: TextFormField(
                                      controller:
                                          _model.textFieldCorreoLoginController,
                                      focusNode:
                                          _model.textFieldCorreoLoginFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textFieldCorreoLoginController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      textCapitalization:
                                          TextCapitalization.none,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Correo electrónico',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF060606),
                                              fontSize: 15.0,
                                            ),
                                        alignLabelWithHint: true,
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFF060606),
                                              fontSize: 15.0,
                                            ),
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Color(0xFFFF0007),
                                              fontSize: 10.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF060606),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF060606),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF060606),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF060606),
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                25.0, 0.0, 25.0, 0.0),
                                        prefixIcon: Icon(
                                          Icons.email,
                                          color: Colors.black,
                                          size: 25.0,
                                        ),
                                        suffixIcon: _model
                                                .textFieldCorreoLoginController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model
                                                      .textFieldCorreoLoginController
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
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF060606),
                                            fontSize: 13.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      keyboardType: TextInputType.emailAddress,
                                      cursorColor: Color(0xFF060606),
                                      validator: _model
                                          .textFieldCorreoLoginControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(),
                                  child: Container(
                                    height: 70.0,
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 300.0,
                                          height: 70.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: TextFormField(
                                              controller: _model
                                                  .textFieldContrasenaLoginController,
                                              focusNode: _model
                                                  .textFieldContrasenaLoginFocusNode,
                                              textCapitalization:
                                                  TextCapitalization.none,
                                              textInputAction:
                                                  TextInputAction.previous,
                                              obscureText: !_model
                                                  .textFieldContrasenaLoginVisibility,
                                              decoration: InputDecoration(
                                                labelText: 'Contraseña',
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF060606),
                                                      fontSize: 15.0,
                                                    ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFF060606),
                                                      fontSize: 15.0,
                                                    ),
                                                errorStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFFFF0007),
                                                      fontSize: 10.0,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF060606),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF060606),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF060606),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFF060606),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(25.0, 0.0,
                                                            25.0, 0.0),
                                                prefixIcon: Icon(
                                                  Icons.lock,
                                                  color: Colors.black,
                                                  size: 25.0,
                                                ),
                                                suffixIcon: InkWell(
                                                  onTap: () => setState(
                                                    () => _model
                                                            .textFieldContrasenaLoginVisibility =
                                                        !_model
                                                            .textFieldContrasenaLoginVisibility,
                                                  ),
                                                  focusNode: FocusNode(
                                                      skipTraversal: true),
                                                  child: Icon(
                                                    _model.textFieldContrasenaLoginVisibility
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: Color(0xFF060606),
                                                    size: 25.0,
                                                  ),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF060606),
                                                    fontSize: 13.0,
                                                  ),
                                              textAlign: TextAlign.start,
                                              cursorColor: Color(0xFF060606),
                                              validator: _model
                                                  .textFieldContrasenaLoginControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  270.0, 50.0, 10.0, 0.0),
                                          child: Container(
                                            width: 25.0,
                                            height: 25.0,
                                            decoration: BoxDecoration(),
                                            child: AlignedTooltip(
                                              content: Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Text(
                                                    '  La contraseña debe tener:\n  - Mínimo de 10 caracteres\n  - Mayúsculas, minúsculas\n  - Números y caracteres \n     especiales (@, #, \$, %, &, -)\n  - No debe contener espacios  ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFF6F6F6),
                                                          fontSize: 15.0,
                                                        ),
                                                  )),
                                              offset: 5.0,
                                              preferredDirection:
                                                  AxisDirection.down,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              backgroundColor:
                                                  Color(0xFF060606),
                                              elevation: 5.0,
                                              tailBaseWidth: 30.0,
                                              tailLength: 15.0,
                                              waitDuration:
                                                  Duration(milliseconds: 100),
                                              showDuration:
                                                  Duration(milliseconds: 1500),
                                              triggerMode:
                                                  TooltipTriggerMode.tap,
                                              child: Icon(
                                                Icons.info_rounded,
                                                color: Color(0xFF060606),
                                                size: 20.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 5.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: Container(
                            width: 300.0,
                            height: 30.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(),
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              Color(0xFF060606),
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue1 ??=
                                              false,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .checkboxValue1 = newValue!);
                                          },
                                          activeColor: Color(0xFF060606),
                                          checkColor: Color(0xFFF6F6F6),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        'Mantener la\nsesion iniciada',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w600,
                                              lineHeight: 1.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 10.0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          child: Container(
                            width: 300.0,
                            height: 40.0,
                            decoration: BoxDecoration(),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Boton_IniciarSesion pressed ...');
                              },
                              text: 'INICIAR SESION',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25.0, 0.0, 25.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFF26457),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
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
                        Container(
                          width: 300.0,
                          height: 50.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 300.0,
                                height: 20.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '¿Has olvidado la contraseña?',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                height: 20.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          'S02-2_restablecerContrasena_Mv');
                                    },
                                    child: Text(
                                      'Restablecer contraseña',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xE5FF0010),
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                          ),
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
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
                Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: 300.0,
                          height: 40.0,
                          decoration: BoxDecoration(),
                          child: Text(
                            'Complete los campos a\ncontinuación para registrarse',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        height: 220.0,
                        decoration: BoxDecoration(),
                        child: Form(
                          key: _model.formKey2,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 300.0,
                                height: 70.0,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: TextFormField(
                                    controller: _model
                                        .textFieldCorreoRegistrarseController,
                                    focusNode: _model
                                        .textFieldCorreoRegistrarseFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.textFieldCorreoRegistrarseController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    textCapitalization: TextCapitalization.none,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Correo electrónico',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF060606),
                                            fontSize: 15.0,
                                          ),
                                      alignLabelWithHint: true,
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFF060606),
                                            fontSize: 15.0,
                                          ),
                                      errorStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Color(0xFFFF0007),
                                            fontSize: 10.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF060606),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF060606),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF060606),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF060606),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              25.0, 0.0, 25.0, 0.0),
                                      prefixIcon: Icon(
                                        Icons.email,
                                        color: Colors.black,
                                        size: 25.0,
                                      ),
                                      suffixIcon: _model
                                              .textFieldCorreoRegistrarseController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model
                                                    .textFieldCorreoRegistrarseController
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
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF060606),
                                          fontSize: 13.0,
                                        ),
                                    textAlign: TextAlign.start,
                                    keyboardType: TextInputType.emailAddress,
                                    cursorColor: Color(0xFF060606),
                                    validator: _model
                                        .textFieldCorreoRegistrarseControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                height: 70.0,
                                decoration: BoxDecoration(),
                                child: Container(
                                  height: 70.0,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 300.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldContrasenaRegistrarseController,
                                            focusNode: _model
                                                .textFieldContrasenaRegistrarseFocusNode,
                                            textCapitalization:
                                                TextCapitalization.none,
                                            textInputAction:
                                                TextInputAction.previous,
                                            obscureText: !_model
                                                .textFieldContrasenaRegistrarseVisibility,
                                            decoration: InputDecoration(
                                              labelText: 'Contraseña',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF060606),
                                                    fontSize: 15.0,
                                                  ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF060606),
                                                    fontSize: 15.0,
                                                  ),
                                              errorStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFF0007),
                                                    fontSize: 10.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 25.0, 0.0),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.black,
                                                size: 25.0,
                                              ),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .textFieldContrasenaRegistrarseVisibility =
                                                      !_model
                                                          .textFieldContrasenaRegistrarseVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.textFieldContrasenaRegistrarseVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF060606),
                                                  size: 25.0,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF060606),
                                                  fontSize: 13.0,
                                                ),
                                            textAlign: TextAlign.start,
                                            cursorColor: Color(0xFF060606),
                                            validator: _model
                                                .textFieldContrasenaRegistrarseControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            270.0, 50.0, 10.0, 0.0),
                                        child: Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: AlignedTooltip(
                                                      content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.0),
                                                          child: Text(
                                                            '  La contraseña debe tener:\n  - Mínimo de 10 caracteres\n  - Mayúsculas, minúsculas\n  - Números y caracteres \n     especiales (@, #, \$, %, &, -)\n  - No debe contener espacios  ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFF6F6F6),
                                                                  fontSize:
                                                                      15.0,
                                                                ),
                                                          )),
                                                      offset: 5.0,
                                                      preferredDirection:
                                                          AxisDirection.down,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      backgroundColor:
                                                          Color(0xFF060606),
                                                      elevation: 5.0,
                                                      tailBaseWidth: 30.0,
                                                      tailLength: 15.0,
                                                      waitDuration: Duration(
                                                          milliseconds: 100),
                                                      showDuration: Duration(
                                                          milliseconds: 1500),
                                                      triggerMode:
                                                          TooltipTriggerMode
                                                              .tap,
                                                      child: Icon(
                                                        Icons.info_rounded,
                                                        color:
                                                            Color(0xFF060606),
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 300.0,
                                height: 70.0,
                                decoration: BoxDecoration(),
                                child: Container(
                                  height: 70.0,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 300.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, -1.0),
                                          child: TextFormField(
                                            controller: _model
                                                .textFieldRepetirContrasenaRegistrarseController,
                                            focusNode: _model
                                                .textFieldRepetirContrasenaRegistrarseFocusNode,
                                            textCapitalization:
                                                TextCapitalization.none,
                                            textInputAction:
                                                TextInputAction.previous,
                                            obscureText: !_model
                                                .textFieldRepetirContrasenaRegistrarseVisibility,
                                            decoration: InputDecoration(
                                              labelText: 'Repetir Contraseña',
                                              labelStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF060606),
                                                    fontSize: 15.0,
                                                  ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF060606),
                                                    fontSize: 15.0,
                                                  ),
                                              errorStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFFFF0007),
                                                    fontSize: 10.0,
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFF060606),
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 25.0, 0.0),
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.black,
                                                size: 25.0,
                                              ),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .textFieldRepetirContrasenaRegistrarseVisibility =
                                                      !_model
                                                          .textFieldRepetirContrasenaRegistrarseVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.textFieldRepetirContrasenaRegistrarseVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF060606),
                                                  size: 25.0,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xFF060606),
                                                  fontSize: 13.0,
                                                ),
                                            textAlign: TextAlign.start,
                                            cursorColor: Color(0xFF060606),
                                            validator: _model
                                                .textFieldRepetirContrasenaRegistrarseControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            270.0, 50.0, 10.0, 0.0),
                                        child: Container(
                                          width: 25.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Container(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    decoration: BoxDecoration(),
                                                    child: AlignedTooltip(
                                                      content: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  10.0),
                                                          child: Text(
                                                            '  La contraseña debe tener:\n  - Mínimo de 10 caracteres\n  - Mayúsculas, minúsculas\n  - Números y caracteres \n     especiales (@, #, \$, %, &, -)\n  - No debe contener espacios  ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Color(
                                                                      0xFFF6F6F6),
                                                                  fontSize:
                                                                      15.0,
                                                                ),
                                                          )),
                                                      offset: 5.0,
                                                      preferredDirection:
                                                          AxisDirection.down,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      backgroundColor:
                                                          Color(0xFF060606),
                                                      elevation: 5.0,
                                                      tailBaseWidth: 30.0,
                                                      tailLength: 15.0,
                                                      waitDuration: Duration(
                                                          milliseconds: 100),
                                                      showDuration: Duration(
                                                          milliseconds: 1500),
                                                      triggerMode:
                                                          TooltipTriggerMode
                                                              .tap,
                                                      child: Icon(
                                                        Icons.info_rounded,
                                                        color:
                                                            Color(0xFF060606),
                                                        size: 20.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 25.0, 0.0, 15.0),
                        child: Container(
                          width: 300.0,
                          height: 30.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            valueOrDefault<Color>(
                                          _model.errorCheckBoxPoliticas!
                                              ? Color(0xFFFF0007)
                                              : Color(0xFF060606),
                                          Color(0xFF060606),
                                        ),
                                      ),
                                      child: Checkbox(
                                        value: _model.checkboxValue2 ??= false,
                                        onChanged: (newValue) async {
                                          setState(() => _model.checkboxValue2 =
                                              newValue!);
                                        },
                                        activeColor: valueOrDefault<Color>(
                                          _model.errorCheckBoxPoliticas!
                                              ? Color(0xFFFF0007)
                                              : Color(0xFF060606),
                                          Color(0xFF060606),
                                        ),
                                        checkColor: Color(0xFFF6F6F6),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 250.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Container(
                                          width: 75.0,
                                          height: 25.0,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                            child: Text(
                                              'Acepto la ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.black,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 170.0,
                                        height: 25.0,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Política de Privacidad',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Color(0xE5FF0010),
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.w600,
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
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Container(
                          width: 300.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: FutureBuilder<List<ListadoUsuariosAppRow>>(
                            future: ListadoUsuariosAppTable().querySingleRow(
                              queryFn: (q) => q,
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFFF6F6F6),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<ListadoUsuariosAppRow>
                                  botonRegistrarseListadoUsuariosAppRowList =
                                  snapshot.data!;
                              final botonRegistrarseListadoUsuariosAppRow =
                                  botonRegistrarseListadoUsuariosAppRowList
                                          .isNotEmpty
                                      ? botonRegistrarseListadoUsuariosAppRowList
                                          .first
                                      : null;
                              return FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('S02-1_loginRegistrarse');
                                },
                                text: 'REGISTRARSE',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFF26457),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
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
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
              ],
            ),
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
  }
}
