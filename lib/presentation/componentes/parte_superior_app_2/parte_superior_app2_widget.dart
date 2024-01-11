import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'parte_superior_app2_model.dart';

export 'parte_superior_app2_model.dart';

class ParteSuperiorApp2Widget extends StatefulWidget {
  const ParteSuperiorApp2Widget({Key? key}) : super(key: key);

  @override
  _ParteSuperiorApp2WidgetState createState() =>
      _ParteSuperiorApp2WidgetState();
}

class _ParteSuperiorApp2WidgetState extends State<ParteSuperiorApp2Widget> {
  late ParteSuperiorApp2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ParteSuperiorApp2Model());

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
            width: 80.0,
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
                      Icons.keyboard_return_rounded,
                      color: Color(0xFF060606),
                      size: 25.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(55.0, 0.0, 0.0, 0.0),
            child: Container(
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
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(98.0, 0.0, 0.0, 0.0),
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
