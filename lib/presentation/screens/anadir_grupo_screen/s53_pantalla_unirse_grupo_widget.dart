import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../provider/usermodel.dart';
import '../../componentes/parte_superior_app_2/parte_superior_app2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 's53_pantalla_unirse_grupo_model.dart';

export 's53_pantalla_unirse_grupo_model.dart';

class S53PantallaUnirseGrupoWidget extends ConsumerStatefulWidget {
  const S53PantallaUnirseGrupoWidget({super.key});

  @override
  ConsumerState<S53PantallaUnirseGrupoWidget> createState() =>
      _S53PantallaUnirseGrupoWidgetState();
}

class _S53PantallaUnirseGrupoWidgetState
    extends ConsumerState<S53PantallaUnirseGrupoWidget> {
  late S53PantallaUnirseGrupoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  DataBaseController clienteController = DataBaseController();
  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S53PantallaUnirseGrupoModel());

    _model.textFieldCodigoAccesoGrupoController ??= TextEditingController();
    _model.textFieldCodigoAccesoGrupoFocusNode ??= FocusNode();

    _model.textFieldContrasenaGrupoController ??= TextEditingController();
    _model.textFieldContrasenaGrupoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userModel = ref.watch(userModelProvider);
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6F6F6),
        drawer: Drawer(
          elevation: 16.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: 393.0,
            height: 852.0,
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.parteSuperiorApp2Model,
                  updateCallback: () => setState(() {}),
                  child: const ParteSuperiorApp2Widget(),
                ),
                const SizedBox(
                  width: 393.0,
                  child: Divider(
                    thickness: 2.0,
                    color: Color(0xFF060606),
                  ),
                ),
                Container(
                  width: 300.0,
                  height: 500.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: 300.0,
                          height: 130.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F6F6),
                          ),
                          child: Text(
                            'UNIRSE A\nUN GRUPO',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF060606),
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 25.0, 0.0, 50.0),
                        child: Container(
                          width: 311.0,
                          height: 80.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF6F6F6),
                          ),
                          child: Text(
                            'Introduce el código y la\ncontraseña del grupo al que\n deseas unirte',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: 300.0,
                          height: 70.0,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: TextFormField(
                              controller:
                                  _model.textFieldCodigoAccesoGrupoController,
                              focusNode:
                                  _model.textFieldCodigoAccesoGrupoFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.textFieldCodigoAccesoGrupoController',
                                Duration(milliseconds: 2000),
                                () => setState(() {}),
                              ),
                              textCapitalization: TextCapitalization.none,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Código de acceso',
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
                                  Icons.contact_mail,
                                  color: Colors.black,
                                  size: 25.0,
                                ),
                                suffixIcon: _model
                                        .textFieldCodigoAccesoGrupoController!
                                        .text
                                        .isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model
                                              .textFieldCodigoAccesoGrupoController
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
                              cursorColor: Colors.black,
                              validator: _model
                                  .textFieldCodigoAccesoGrupoControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300.0,
                        height: 70.0,
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: TextFormField(
                            controller:
                                _model.textFieldContrasenaGrupoController,
                            focusNode: _model.textFieldContrasenaGrupoFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.textFieldContrasenaGrupoController',
                              Duration(milliseconds: 2000),
                              () => setState(() {}),
                            ),
                            textCapitalization: TextCapitalization.none,
                            textInputAction: TextInputAction.next,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Contraseña del grupo',
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
                                Icons.lock,
                                color: Colors.black,
                                size: 25.0,
                              ),
                              suffixIcon: _model
                                      .textFieldContrasenaGrupoController!
                                      .text
                                      .isNotEmpty
                                  ? InkWell(
                                      onTap: () async {
                                        _model
                                            .textFieldContrasenaGrupoController
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
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: Colors.black,
                            validator: _model
                                .textFieldContrasenaGrupoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Container(
                          width: 215.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final b = await clienteController.sendDataUsuarioGrupo(
                                  _model.textFieldCodigoAccesoGrupoController.text,
                                  _model.textFieldContrasenaGrupoController.text
                              );
                              void updateUI(String message) {
                                _mostrarDialogo(context, message);
                                userModel.cargarGrupos();
                              }

                              if (b == true) {
                                updateUI("Grupo añadido");
                              } else {
                                updateUI("Grupo no añadido");
                              }
                            },
                            text: 'UNIRSE AL GRUPO',
                            icon: const Icon(
                              Icons.login_rounded,
                              color: Color(0xFFF6F6F6),
                              size: 20.0,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xCDFF0007),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
