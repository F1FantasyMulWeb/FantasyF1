import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/presentation/componentes/widgets_app_bard_mv/cont_app_bard1_mv/cont_app_bard1_mv_widget.dart';
import 'package:FantasyF1/presentation/screens/lista_circuitos_screen/lista_circuitos_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

import '../../../api/configuracionApi.dart';
import '../../../api/modelo/RaceScheduleModel.dart';
import '../../../flutter_flow/flutter_flow_model.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '../info_circuito/infocircuito_screen.dart';

class ListaCircuitosScreen extends StatefulWidget {
  const ListaCircuitosScreen({
    Key? key,
    String? rutaPagina,
  })  : this.rutaPagina = rutaPagina ?? 'lista_circuitos',
        super(key: key);

  final String rutaPagina;

  @override
  _ListaCircuitosScreen createState() => _ListaCircuitosScreen();
}

class _ListaCircuitosScreen extends State<ListaCircuitosScreen> {
  late Lista_circuitos_model _model;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lista_circuitos_model());
    initializeCarGlobal();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }
  RaceScheduleModel? circuitos = null;
  List<Circuit>? circuit = null;

  Client cliente = Client();

  Future<RaceScheduleModel?> initializeCarGlobal() async {
    Client cliente = Client();
    var gl = await cliente.getRaces("2023", queryParams: "limit=22");
    print(gl);
    setState(() {
      circuitos = gl;
      circuit = circuitos!.mrData.circuitTable.circuits;
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
          drawer: Container(
            width: 300.0,
            child: Drawer(
              elevation: 16.0,
              child: wrapWithModel(
                model: _model.contMenuLateralModel,
                updateCallback: () => setState(() {}),
                child: ContMenuLateralWidget(
                  rutaPagina: widget.rutaPagina,
                ),
              ),
            ),
          ),
            body: Column(
              children: [
              wrapWithModel(
              model: _model.contAppBard2MvModel,
              updateCallback: () => setState(() {}),
              child: const ContAppBard1MvWidget(),
            ),
            Expanded(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          const Divider(),
                          SizedBox(height: 9.v),
                          Text("lbl_circuitos".tr,
                              style: theme.textTheme.displayMedium),
                        ],
                      ),
                    ),
                    if (circuit != null)
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            var i = circuit![index];
                            return Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 380.h,
                                  margin: EdgeInsets.only(top: 5.v, right: 0.h),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Container(
                                            height: 75.v,
                                            margin:
                                                EdgeInsets.only(bottom: 5.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 5.v),
                                            decoration:
                                                AppDecoration.fillWhiteA,
                                            child: Stack(
                                                alignment: Alignment.topLeft,
                                                fit: StackFit.loose,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVector1,
                                                      height: 180.h,
                                                      width: 273.h,
                                                      alignment:
                                                          Alignment.center,
                                                      onTap: () {
                                                        onTapCircuits(
                                                            context, i);
                                                      }),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  top: 8.v),
                                                          child: Row(children: [
                                                            AvifImage.asset(
                                                                ImageConstant
                                                                    .imgCircuitoAvif(i
                                                                        .circuitId),
                                                                height: 200,
                                                                fit: BoxFit
                                                                    .scaleDown,
                                                                alignment: Alignment
                                                                    .centerLeft),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 16
                                                                            .h),
                                                                child: Text(
                                                                  circuitos ==
                                                                          null
                                                                      ? ""
                                                                      : i.circuitName,
                                                                  style: theme
                                                                      .textTheme
                                                                      .displaySmall
                                                                      ?.copyWith(
                                                                    fontSize:
                                                                        13, // El tamaño de fuente que prefieras
                                                                    // Aquí puedes añadir otros atributos si es necesario
                                                                  ),
                                                                ))
                                                          ])))
                                                ]))
                                      ])),
                            );
                          },
                          childCount: circuit!.length,
                        ),
                      ),
                  ],
                ))],),));
  }


  onTapCircuits(BuildContext context, Circuit circuit) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Infocircuito_screen(circuit: circuit)));
  }

  /// Navigates to the circuitoBahrInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoBahrInScreen.
  onTapStackbahrin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infoCircuito);
  }


}
