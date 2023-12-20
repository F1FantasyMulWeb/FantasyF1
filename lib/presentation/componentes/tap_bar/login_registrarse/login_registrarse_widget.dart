import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../DataBase/databasecontroller.dart';
import '../../../../core/utils/FormValidatorLogin.dart';
import '../../../../core/utils/FormValidatorRegister.dart';
import '../../../../localization/app_localization.dart';
import '../../../../widgets/CheckboxCustom.dart';
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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_registrarse_model.dart';
export 'login_registrarse_model.dart';

class LoginRegistrarseWidget extends StatefulWidget {
  const LoginRegistrarseWidget({
    Key? key,
    this.validacionErronea,
  }) : super(key: key);

  final bool? validacionErronea;

  @override
  State<LoginRegistrarseWidget> createState() => _LoginRegistrarseWidgetState();
}

class _LoginRegistrarseWidgetState extends State<LoginRegistrarseWidget>
    with TickerProviderStateMixin {
  DataBaseController clienteController = DataBaseController();
  late LoginRegistrarseModel _model;
  bool _isChecked = false;

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
          begin: const Offset(0.0, 80.0),
          end: const Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 400.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
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
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
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
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
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
    _model = createModel(context, () => LoginRegistrarseModel());

    _model.tabBarController = TabController(
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
    FormValidatorRegister formValidator =
        FormValidatorRegister(AppLocalization.of());
    FormValidatorLogin formValidatorL =
        FormValidatorLogin(AppLocalization.of());
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: 300.0,
        height: 508.0,
        decoration: const BoxDecoration(
          color: Color(0xFFF6F6F6),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: const Alignment(0.0, 0),
                  child: TabBar(
                    labelColor: const Color(0xFF060606),
                    unselectedLabelColor: const Color(0xFFADB6BF),
                    labelStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                    unselectedLabelStyle: const TextStyle(),
                    indicatorColor: const Color(0xCDFF0007),
                    indicatorWeight: 3.0,
                    tabs: const [
                      Tab(
                        text: 'INICIAR SESION',
                      ),
                      Tab(
                        text: 'REGISTRARSE',
                      ),
                    ],
                    controller: _model.tabBarController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 15.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                ),
                                child: Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
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
                            ),
                            Container(
                              width: 300.0,
                              height: 145.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                              ),
                              child: Form(
                                key: _model.formKey1,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 300.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, -1.0),
                                        child: TextFormField(
                                          controller: _model
                                              .textFieldCorreoLoginController,
                                          focusNode: _model
                                              .textFieldCorreoLoginFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textFieldCorreoLoginController',
                                            const Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          textCapitalization:
                                              TextCapitalization.none,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Correo electrónico',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF060606),
                                                  fontSize: 15.0,
                                                ),
                                            alignLabelWithHint: true,
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF060606),
                                                  fontSize: 15.0,
                                                ),
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xFFFF0007),
                                                      fontSize: 10.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    25.0, 0.0, 25.0, 0.0),
                                            prefixIcon: const Icon(
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
                                                    child: const Icon(
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
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: Colors.black,
                                          validator:
                                              formValidatorL.isValidEmail,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 300.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                      ),
                                      child: SizedBox(
                                        height: 70.0,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 300.0,
                                              height: 70.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF6F6F6),
                                              ),
                                              child: Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, -1.0),
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
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    errorStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFFF0007),
                                                          fontSize: 10.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Colors.black,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                            25.0, 0.0),
                                                    prefixIcon: const Icon(
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
                                                        color: Colors.black,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 13.0,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  cursorColor: Colors.black,
                                                  validator: formValidatorL
                                                      .isValidPass,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      270.0, 50.0, 10.0, 0.0),
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xFFF6F6F6),
                                                          ),
                                                          child: AlignedTooltip(
                                                            content: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        4.0),
                                                                child: Text(
                                                                  'La contraseña debe tener:\n- Mínimo de 10 caracteres\n- Mayúsculas, minúsculas\n- Números y caracteres \n   especiales (@, #, \$, %, &, -)\n- No debe contener espacios',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge,
                                                                )),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
                                                            child: const Icon(
                                                              Icons
                                                                  .info_rounded,
                                                              color:
                                                                  Colors.black,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(const SizedBox(
                                                        width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Container(
                                width: 300.0,
                                height: 30.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 30.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF6F6F6),
                                        ),
                                        child: Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                            ),
                                            unselectedWidgetColor: Colors.black,
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue1 ??=
                                                false,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .checkboxValue1 = newValue!);
                                            },
                                            activeColor: Colors.black,
                                            checkColor: Color(0xFFF6F6F6),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 200.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF6F6F6),
                                        ),
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
                                  0.0, 0.0, 0.0, 10.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Boton_ContinuarGoogle pressed ...');
                                  },
                                  text: 'CONTINUAR CON GOOGLE',
                                  icon: const FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 25.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFFF6F6F6),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 300.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F6F6),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 300.0,
                                    height: 20.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFF6F6F6),
                                    ),
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
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF6F6F6),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                      Container(
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 15.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                ),
                                child: Align(
                                  alignment:
                                      const AlignmentDirectional(0.0, 0.0),
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
                            ),
                            Container(
                              width: 300.0,
                              height: 265.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                              ),
                              child: Form(
                                key: _model.formKey2,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 300.0,
                                      height: 70.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                      ),
                                      child: Align(
                                        alignment: const AlignmentDirectional(
                                            0.0, -1.0),
                                        child: TextFormField(
                                          controller: _model
                                              .textFieldCorreoRegistrarseController,
                                          focusNode: _model
                                              .textFieldCorreoRegistrarseFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textFieldCorreoRegistrarseController',
                                            const Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          textCapitalization:
                                              TextCapitalization.none,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Correo electrónico',
                                            labelStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF060606),
                                                  fontSize: 15.0,
                                                ),
                                            alignLabelWithHint: true,
                                            hintStyle: FlutterFlowTheme.of(
                                                    context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFF060606),
                                                  fontSize: 15.0,
                                                ),
                                            errorStyle: FlutterFlowTheme.of(
                                                    context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color:
                                                      const Color(0xFFFF0007),
                                                  fontSize: 10.0,
                                                ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0xFF060606),
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    25.0, 0.0, 25.0, 0.0),
                                            prefixIcon: const Icon(
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
                                                    child: const Icon(
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
                                                color: const Color(0xFF060606),
                                                fontSize: 13.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor: Colors.black,
                                          validator: formValidator.isValidEmail,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 300.0,
                                      height: 70.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                      ),
                                      child: Container(
                                        height: 70.0,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 300.0,
                                              height: 70.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF6F6F6),
                                              ),
                                              child: Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, -1.0),
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
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    errorStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFFF0007),
                                                          fontSize: 10.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Colors.black,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                            25.0, 0.0),
                                                    prefixIcon: const Icon(
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
                                                        color: Colors.black,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 13.0,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  cursorColor: Colors.black,
                                                  validator:
                                                      formValidator.isValidPass,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      270.0, 50.0, 10.0, 0.0),
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xFFF6F6F6),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(const SizedBox(
                                                        width: 10.0)),
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
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFF6F6F6),
                                      ),
                                      child: Container(
                                        height: 70.0,
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: 300.0,
                                              height: 70.0,
                                              decoration: const BoxDecoration(
                                                color: Color(0xFFF6F6F6),
                                              ),
                                              child: Align(
                                                alignment:
                                                    const AlignmentDirectional(
                                                        0.0, -1.0),
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
                                                    labelText:
                                                        'Repetir Contraseña',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 15.0,
                                                        ),
                                                    errorStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              Color(0xFFFF0007),
                                                          fontSize: 10.0,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color: Colors.black,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide:
                                                          const BorderSide(
                                                        color:
                                                            Color(0xFF060606),
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    contentPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                            25.0, 0.0),
                                                    prefixIcon: const Icon(
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
                                                        color: Colors.black,
                                                        size: 25.0,
                                                      ),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 13.0,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                  cursorColor: Colors.black,
                                                  validator: (text) {
                                                    return formValidator
                                                        .isValidRepeatedPassword(
                                                            text,
                                                            _model
                                                                .textFieldContrasenaRegistrarseController
                                                                .text);
                                                  },
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      270.0, 50.0, 10.0, 0.0),
                                              child: Container(
                                                width: 25.0,
                                                height: 25.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, 0.0),
                                                        child: Container(
                                                          width: 20.0,
                                                          height: 20.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xFFF6F6F6),
                                                          ),
                                                          child: AlignedTooltip(
                                                            content: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        4.0),
                                                                child: Text(
                                                                  'La contraseña debe tener:\n- Mínimo de 10 caracteres\n- Mayúsculas, minúsculas\n- Números y caracteres \n   especiales (@, #, \$, %, &, -)\n- No debe contener espacios',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge,
                                                                )),
                                                            offset: 4.0,
                                                            preferredDirection:
                                                                AxisDirection
                                                                    .down,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                            elevation: 4.0,
                                                            tailBaseWidth: 24.0,
                                                            tailLength: 12.0,
                                                            waitDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        100),
                                                            showDuration:
                                                                const Duration(
                                                                    milliseconds:
                                                                        1500),
                                                            triggerMode:
                                                                TooltipTriggerMode
                                                                    .tap,
                                                            child: const Icon(
                                                              Icons
                                                                  .info_rounded,
                                                              color:
                                                                  Colors.black,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(const SizedBox(
                                                        width: 10.0)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 10.0),
                                      child: Container(
                                        width: 300.0,
                                        height: 30.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFF6F6F6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsetsDirectional
                                              .fromSTEB(6.0, 0.0, 30.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  width: 30.0,
                                                  height: 30.0,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Color(0xFFF6F6F6),
                                                  ),
                                                  child: Checkbox(
                                                    value: _isChecked,
                                                    onChanged: (bool? value) {
                                                      setState(() {
                                                        _isChecked = value!;
                                                      });
                                                    },
                                                  )),
                                              Container(
                                                width: 230.0,
                                                height: 100.0,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFF6F6F6),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      'Acepto la ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Política de Privacidad',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: const Color(
                                                                0xE5FF0010),
                                                            fontWeight:
                                                                FontWeight.w600,
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
                                  ].divide(const SizedBox(height: 5.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 15.0),
                              child: Container(
                                width: 300.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF6F6F6),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    if (_model.formKey2.currentState!
                                        .validate()) {
                                      if (!_isChecked) {
                                        mostrarSnackBar(context);
                                      }
                                    }
                                  },
                                  text: 'REGISTRARSE',
                                  options: FFButtonOptions(
                                    height: 40.0,
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 25.0, 0.0),
                                    iconPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
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
                                    borderSide: const BorderSide(
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
                              height: 40.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                              ),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'REGISTRARSE CON GOOGLE',
                                icon: const FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 20.0,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      25.0, 0.0, 25.0, 0.0),
                                  iconPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFF6F6F6),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 15.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
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
          ],
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
    );
  }

  void mostrarSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Por favor, marca el CheckBox'),
      ),
    );
  }

  Future<void> _registrarUsuario(BuildContext context) async {
    final correo = _model.textFieldCorreoRegistrarseController.text;
    final contrasena = _model.textFieldContrasenaRegistrarseController.text;
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: correo,
        password: contrasena,
      );

      if (response.user != null) {
        final checkEmail = await clienteController.checkEmail(correo);
        if (checkEmail) {
          final checkSend = await clienteController.sendData(correo, "Pepe");
          if (checkSend) {
            _mostrarDialogo(context, "msg_registro_exitoso".tr);
          } else {
            _mostrarDialogo(context, "msg_error_de_registro".tr);
          }
        } else {
          _mostrarDialogo(context, "msg_error_de_registro".tr);
        }
      }
    } catch (e) {
      _mostrarDialogo(context, "msg_error_de_registro".tr);
    }
  }

  void _mostrarDialogo(BuildContext context, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Text(mensaje),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
