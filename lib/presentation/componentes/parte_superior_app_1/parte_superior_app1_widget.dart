import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'parte_superior_app1_model.dart';
export 'parte_superior_app1_model.dart';

class ParteSuperiorApp1Widget extends StatefulWidget {
  const ParteSuperiorApp1Widget({Key? key}) : super(key: key);

  @override
  _ParteSuperiorApp1WidgetState createState() =>
      _ParteSuperiorApp1WidgetState();
}

class _ParteSuperiorApp1WidgetState extends State<ParteSuperiorApp1Widget> {
  late ParteSuperiorApp1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParteSuperiorApp1Model());

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
      width: 393.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: FlutterFlowIconButton(
              borderRadius: 0.0,
              borderWidth: 1.0,
              buttonSize: 25.0,
              icon: Icon(
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
            width: 60.0,
            height: 30.0,
            decoration: BoxDecoration(
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
            ),
          ),
          Container(
            width: 35.0,
            height: 35.0,
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: Container(
              width: 70.0,
              height: 70.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/logoF1F_IconoApp.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ].divide(SizedBox(width: 98.0)),
      ),
    );
  }
}
