import 'package:FantasyF1/DataBase/databasecontroller.dart';
import 'package:go_router/go_router.dart';

import '../../../routes/app_routes.dart';
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
import 'cont_establecer_nombre_usuario_model.dart';
export 'cont_establecer_nombre_usuario_model.dart';

class ContEstablecerNombreUsuarioWidget extends StatefulWidget {
  const ContEstablecerNombreUsuarioWidget({super.key});

  @override
  State<ContEstablecerNombreUsuarioWidget> createState() =>
      _ContEstablecerNombreUsuarioWidgetState();
}

class _ContEstablecerNombreUsuarioWidgetState
    extends State<ContEstablecerNombreUsuarioWidget>
    with TickerProviderStateMixin {
  late ContEstablecerNombreUsuarioModel _model;

  DataBaseController dataBaseController = DataBaseController();
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
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContEstablecerNombreUsuarioModel());

    _model.tabBarRestablecerContrasenaController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.textFieldCorreoRestablecerContrasenaController ??=
        TextEditingController();
    _model.textFieldCorreoRestablecerContrasenaFocusNode ??= FocusNode();

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
      height: 350.0,
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
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
              unselectedLabelStyle: TextStyle(),
              indicatorColor: Color(0xCDFF0007),
              indicatorWeight: 3.0,
              tabs: const [
                Tab(
                  text: 'ESTABLEZCA SU NOMBRE DE USUARIO',

                ),
              ],
              controller: _model.tabBarRestablecerContrasenaController,
              onTap: (i) async {
                [() async {}][i]();
              },
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _model.tabBarRestablecerContrasenaController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
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
                          height: 60.0,
                          decoration: BoxDecoration(),
                          child: AutoSizeText(
                            'Recuerde que este nombre no se podra\ncambiar despues de su\n establecimiento',
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
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                        child: Container(
                          width: 300.0,
                          height: 70.0,
                          decoration: BoxDecoration(),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Container(
                              width: 300.0,
                              height: 70.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: TextFormField(
                                  controller: _model
                                      .textFieldCorreoRestablecerContrasenaController,
                                  focusNode: _model
                                      .textFieldCorreoRestablecerContrasenaFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textFieldCorreoRestablecerContrasenaController',
                                    const Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  textCapitalization: TextCapitalization.none,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Nombre de Usuario',
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
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF060606),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF060606),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF060606),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 25.0, 0.0),
                                    prefixIcon: const Icon(
                                      Icons.account_circle_outlined,
                                      color: Colors.black,
                                      size: 25.0,
                                    ),
                                    suffixIcon: _model
                                            .textFieldCorreoRestablecerContrasenaController!
                                            .text
                                            .isNotEmpty
                                        ? InkWell(
                                            onTap: () async {
                                              _model
                                                  .textFieldCorreoRestablecerContrasenaController
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
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor: Color(0xFF060606),
                                  //validator
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: Container(
                          width: 300.0,
                          height: 40.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F6F6),
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              String textoIntroducido = _model.textFieldCorreoRestablecerContrasenaController?.text ?? '';

                              if (textoIntroducido.isNotEmpty) {
                                bool comprobacion = await dataBaseController.verificarNombreUsuarioDisponible(textoIntroducido);

                                if (mounted && comprobacion) {
                                  _mostrarDialogoError(context);
                                } else  {
                                  print("Kebab");
                                 await dataBaseController.actualizarPrimerLoginDatos(textoIntroducido);
                                  if (!mounted) return;
                                  onTapIniciarsesin(context);
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Por favor, introduce un nombre de usuario.'),
                                  ),
                                );
                              }

                            },
                            text: 'CONFIRMAR',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  25.0, 0.0, 25.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
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

                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
              ],
            ),
          ),
        ],
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!);
  }
  void _mostrarDialogoError(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 50,
              ),
              const SizedBox(height: 16),
              const Text(
                'Nombre de Usuario en Uso',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Este nombre de usuario ya está en uso.\nPor favor, elige otro nombre de usuario.',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextButton(
                child: const Text('Aceptar',style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),),
                onPressed: () {
                  Navigator.of(context).pop(); // Cierra el diálogo
                },
              ),
            ],
          ),
        );
      },
    );
  }
  onTapIniciarsesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainscreensinligasScreen);
  }
}
