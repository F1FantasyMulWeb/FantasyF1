import '../../../../routes/app_routes.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cont_encabezado_menu_model.dart';
export 'cont_encabezado_menu_model.dart';

class ContEncabezadoMenuWidget extends StatefulWidget {
  const ContEncabezadoMenuWidget({
    Key? key,
    String? paginaActual,
  })  : this.paginaActual = paginaActual ?? 'notificaciones_Mv',
        super(key: key);

  final String paginaActual;

  @override
  _ContEncabezadoMenuWidgetState createState() =>
      _ContEncabezadoMenuWidgetState();
}

class _ContEncabezadoMenuWidgetState extends State<ContEncabezadoMenuWidget> {
  late ContEncabezadoMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContEncabezadoMenuModel());

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
      height: 50.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 110.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 110.0,
                    height: 25.0,
                    decoration: BoxDecoration(),
                    child: Text(
                      'Formula 1',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFF060606),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Container(
                    width: 110.0,
                    height: 25.0,
                    decoration: BoxDecoration(),
                    child: Text(
                      'Fantasy',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFFF0007),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(),
                child: badges.Badge(
                  badgeContent: Text(
                    valueOrDefault<String>(
                      _model.cantNotificaciones?.toString(),
                      '0',
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFF6F6F6),
                          fontSize: 10.0,
                        ),
                  ),
                  showBadge: true,
                  shape: badges.BadgeShape.circle,
                  badgeColor: Color(0xFFFF0007),
                  elevation: 4.0,
                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                  position: badges.BadgePosition.topEnd(),
                  animationType: badges.BadgeAnimationType.scale,
                  toAnimate: true,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (widget.paginaActual == 'notificaciones_Mv') {
                        return;
                      }

                      //context.pushNamed('S13-1_notificaciones_Mv');

                      return;
                    },
                    child: const Icon(
                      Icons.notifications_sharp,
                      color: Color(0xFF060606),
                      size: 30.0,
                    ),
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 0.0, 10.0),
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(),
                  child: badges.Badge(
                    badgeContent: Text(
                      valueOrDefault<String>(
                        _model.cantNotificaciones?.toString(),
                        '0',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: Color(0xFFF6F6F6),
                            fontSize: 10.0,
                          ),
                    ),
                    showBadge: true,
                    shape: badges.BadgeShape.circle,
                    badgeColor: Color(0xFFFF0007),
                    elevation: 4.0,
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    position: badges.BadgePosition.topEnd(),
                    animationType: badges.BadgeAnimationType.scale,
                    toAnimate: true,
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (widget.paginaActual == 'notificaciones_Mv') {
                          return;
                        }

                        //context.pushNamed('S13-1_notificaciones_Mv');

                        return;
                      },
                      child: const Icon(
                        Icons.notifications_sharp,
                        color: Color(0xFF060606),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 45.0,
                  height: 35.0,
                  decoration: const BoxDecoration(
                    color: Color(0xCD7D7D7D),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                        5.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                        size: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 20.0, 0.0),
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      onTapAvatarScreen(context);
                    },
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/logoF1F_IconoApp.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
          ].divide(const SizedBox(width: 10.0)),
        ),
      ),
    );
  }

  onTapAvatarScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.avatarScreen);
  }
}
