import '../../componentes/header_logo_texto_f1/header_logo_texto_f1_widget.dart';
import '../../componentes/tap_bar/login_registrarse/login_registrarse_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 's21_login_registrarse_model.dart';
export 's21_login_registrarse_model.dart';

class S21LoginRegistrarseWidget extends StatefulWidget {
  const S21LoginRegistrarseWidget({super.key});

  @override
  State<S21LoginRegistrarseWidget> createState() =>
      _S21LoginRegistrarseWidgetState();
}

class _S21LoginRegistrarseWidgetState extends State<S21LoginRegistrarseWidget> {
  late S21LoginRegistrarseModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S21LoginRegistrarseModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color(0xFFF6F6F6),
          body: SafeArea(
            top: true,
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      width: 393.0,
                      height: 844.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF6F6F6),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.headerLogoTextoF1Model,
                              updateCallback: () => setState(() {}),
                              child: const HeaderLogoTextoF1Widget(),
                            ),
                            wrapWithModel(
                              model: _model.loginRegistrarseModel,
                              updateCallback: () => setState(() {}),
                              child: const LoginRegistrarseWidget(
                                validacionErronea: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
