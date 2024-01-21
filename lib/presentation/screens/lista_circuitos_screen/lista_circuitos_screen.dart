import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/presentation/screens/circuito_bahr_in_screen/circuito_bahr_in_screen.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image_1.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

import '../../../api/configuracionApi.dart';
import '../../../api/modelo/RaceScheduleModel.dart';

class ListaCircuitosScreen extends StatefulWidget {
  const ListaCircuitosScreen({Key? key}) : super(key: key);

  @override
  _ListaCircuitosScreen createState() => _ListaCircuitosScreen();
}

class _ListaCircuitosScreen extends State<ListaCircuitosScreen> {
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
  void initState() {
    initializeCarGlobal();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
              leadingWidth: 64.h,
              leading: AppbarImage(
                  svgPath: ImageConstant.imgMenu,
                  margin: EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)),
              centerTitle: true,
              title: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 60.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
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
            ),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          Divider(),
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
                            // Tu código para construir cada ítem de la lista
                            return Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  // Resto del código del ítem
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
                ))));
  }

  /// Navigates to the circuitoUrbanoDeMiamiScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoUrbanoDeMiamiScreen.
  onTapStackmiami(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoUrbanoDeMiamiScreen);
  }

  /// Navigates to the circuitoDeAlbertParkScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoDeAlbertParkScreen.
  onTapStackvectorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoDeAlbertParkScreen);
  }

  onTapCircuits(BuildContext context, Circuit circuit) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CircuitoBahrInScreen(circuit: circuit)));
  }

  /// Navigates to the circuitoBahrInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoBahrInScreen.
  onTapStackbahrin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoBahrInScreen);
  }

  onTapYeda(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoDeLaCornicheDeYedaScreen);
  }
}
