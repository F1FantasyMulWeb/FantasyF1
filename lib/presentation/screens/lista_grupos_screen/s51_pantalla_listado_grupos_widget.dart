import 'package:fantasyf1/DataBase/databasecontroller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/grupoactual.dart';
import '../../../provider/usermodel.dart';
import '../../../routes/app_routes.dart';
import '../../componentes/parte_superior_app_1/parte_superior_app1_widget.dart';
import '../../componentes/test_fields/vista_grupo/vista_grupo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 's51_pantalla_listado_grupos_model.dart';
export 's51_pantalla_listado_grupos_model.dart';

class S51PantallaListadoGruposWidget extends ConsumerStatefulWidget {
  const S51PantallaListadoGruposWidget({super.key});

  @override
  ConsumerState<S51PantallaListadoGruposWidget> createState() =>
      _S51PantallaListadoGruposWidgetState();
}

class _S51PantallaListadoGruposWidgetState
    extends ConsumerState<S51PantallaListadoGruposWidget> {
  late S51PantallaListadoGruposModel _model;
  DataBaseController dataBaseController = DataBaseController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S51PantallaListadoGruposModel());

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
    final grupoActual = ref.watch(grupoActualModelProvider);
    final _listaGrupos = userModel.listaGrupos;
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
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                  child: wrapWithModel(
                    model: _model.parteSuperiorApp1Model,
                    updateCallback: () => setState(() {}),
                    child: ParteSuperiorApp1Widget(),
                  ),
                ),
                const SizedBox(
                  width: 393.0,
                  child: Divider(
                    thickness: 2.0,
                    color: Color(0xFF060606),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(
                      0.0, 15.0, 0.0, 15.0),
                  child: Container(
                    width: 300.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
                    child: Text(
                      'GRUPOS',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF060606),
                            fontSize: 50.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Container(
                  width: 311.0,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 145.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'UNIRSE GRUPO',
                          icon: const Icon(
                            Icons.search_sharp,
                            color: Color(0xFFF6F6F6),
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF060606),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFF6F6F6),
                                  fontSize: 12.0,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              width: 0.0,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 145.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF6F6F6),
                        ),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'CREAR GRUPO',
                          icon: const Icon(
                            Icons.add_circle_outline,
                            color: Color(0xFFF6F6F6),
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 40.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                7.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF060606),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFF6F6F6),
                                  fontSize: 12.0,
                                ),
                            elevation: 0.0,
                            borderSide: const BorderSide(
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 10.0)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: Container(
                    width: 302.0,
                    height: 535.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF6F6F6),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: _listaGrupos.entries
                          .map<Widget>((MapEntry<String, int> entry) {
                        return Column(
                          children: [
                            VistaGrupoWidget(
                              nombreGrupo: entry.key,
                              cantidadJugadores: entry.value,
                              onTap: () {
                                grupoActual
                                    .setnombreGrupo(entry.key);
                                grupoActual.cargarDato();
                                //dataBaseController.selectPilotosDisponiblesDelGrupo1(grupoActual.codeGrupo);
                                onTapUserlistitem(context);
                              },
                            ),
                            const SizedBox(height: 10.0),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  onTapUserlistitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.grupoScreen);
  }

  onTapCrearGrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creargrupoScreen);
  }

  onTapUnirseGrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.anadirGrupoScreen);
  }
}
