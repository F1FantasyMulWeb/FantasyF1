import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../provider/usermodel.dart';
import '../../../../routes/app_routes.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cont_app_bard3_mv_model.dart';
export 'cont_app_bard3_mv_model.dart';

class ContAppBard3MvWidget extends ConsumerStatefulWidget {
  const ContAppBard3MvWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ContAppBard3MvWidget> createState() => _ContAppBard3MvWidgetState();
}

class _ContAppBard3MvWidgetState extends ConsumerState<ContAppBard3MvWidget> {
  late ContAppBard3MvModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContAppBard3MvModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userModel = ref.watch(userModelProvider);
    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tablet: false,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: 393.0,
        height: 40.0,
        decoration: const BoxDecoration(
          color: Color(0xFFF6F6F6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 120.0,
                height: 40.0,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: const Icon(
                          Icons.menu_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: const Icon(
                          Icons.home_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
                          onTapMainScreen(context);
                        },
                      ),
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: const BoxDecoration(),
                      child: FlutterFlowIconButton(
                        buttonSize: 25.0,
                        icon: const Icon(
                          Icons.keyboard_return_rounded,
                          color: Color(0xFF060606),
                          size: 25.0,
                        ),
                        onPressed: () async {
Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 60.0,
                height: 30.0,
                decoration: const BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logoF1F_IconoEncabezado.png',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(115.0, 0.0, 10.0, 0.0),
              child: Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    onTapAvatarScreen(context);
                  },
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.file(
                      File(userModel.avatar),
                      width:
                      50,
                      height:
                      50,
                      fit: BoxFit
                          .cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/imagenUsuario_Default.png',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  onTapAvatarScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.avatarScreen);
  }
  onTapMainScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainscreensinligasScreen);
  }
}
