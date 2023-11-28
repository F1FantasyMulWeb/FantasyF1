import 'dart:io';

import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_circleimage.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../api/configuracionApi.dart';
import '../../../api/modelo/RaceEventModel.dart';

class MainscreensinligasScreen extends StatefulWidget {
  const MainscreensinligasScreen({Key? key}) : super(key: key);
  @override
  _MainscreensinligasScreenState createState() =>
      _MainscreensinligasScreenState();
}

class _MainscreensinligasScreenState extends State<MainscreensinligasScreen> {
  DataBaseController clienteController =
      DataBaseController(Supabase.instance.client);

  RaceEventModel? carGlobal = null;
  List<Result>? resultado = null;
  Circuit? circuito = null;

  Future<RaceEventModel?> initializeCarGlobal() async {
    Client cliente = Client();
    var gl = await cliente
        .getResults("current", "5", "results", queryParams: "limit=15")
        .whenComplete(() => print("cargado"));
    print(carGlobal);
    setState(() {
      carGlobal = gl;
      resultado = carGlobal!.mrData.raceTable.races.first.results;
      circuito = carGlobal!.mrData.raceTable.races.first.circuit;
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

    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                    backgroundColor: Colors.white,
                    leading: Builder(
                      builder: (context) => IconButton(
                        icon: Icon(Icons.menu),
                        iconSize:
                            35, // Ajusta este valor para cambiar el tamaño del icono del menú
                        onPressed: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                    actions: [
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 12.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: AppbarCircleimage(
                              imagePath: ImageConstant.imgDownload31x33,
                              onTap: () {
                                onTapDownloadone(context);
                              }))
                    ]),
                drawer: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 200.0, // Establece el ancho que desees
                              height: 200.0, // Establece el alto que desees
                              child: Image.asset(ImageConstant.imgLogo),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(48),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(48),
                                    topRight: Radius.circular(0)),
                                color: Colors
                                    .grey, // Cambia esto al color de fondo que desees
                              ),
                              child: IconButton(
                                icon: Icon(Icons.close),
                                iconSize: 50,
                                color: Colors.white,
                                // Cambia esto al color del ícono que desees
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                            )
                          ],
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_inicio'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF7E8489),
                            fixedSize: Size(250, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.flag,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_camp'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_circuito'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {
                            onTaplistaPilotos(context);
                          },
                          icon: Icon(
                            Icons.home,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_pilotos'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_esc'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.groups_2,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_grupo'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.videogame_asset,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_howplay'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.account_circle,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_cuenta'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings_sharp,
                            color: Color(0xCC000000),
                            size: 25,
                          ),
                          label: Text(
                            'lbl_ajustes'.tr,
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Color(0xCC000000),
                              fontSize: 20,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF7E8489),
                            fixedSize: Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                body: SizedBox(
                    width: mediaQueryData.size.width,
                    child: SingleChildScrollView(
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 5.v),
                            child: Column(children: [
                              Divider(),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 16.h, top: 48.v, right: 16.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 6.h),
                                  decoration: AppDecoration.outlinePrimary2
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL50),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 4.v),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_ultima_carrera".tr,
                                                style: CustomTextStyles
                                                    .headlineMediumFormula1Regular)),
                                        SizedBox(height: 6.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15.h,
                                                vertical: 4.v),
                                            decoration: AppDecoration
                                                .outlinePrimary3
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder28),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage2951x89,
                                                      height: 50.v,
                                                      width: 85.h),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 6.v,
                                                          right: 25.h),
                                                      child: Text(
                                                          resultado == null
                                                              ? "".tr
                                                              : circuito!
                                                                  .circuitName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .displaySmall35))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 2.h, right: 43.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImagencochepiloto,
                                                  height: 50.v,
                                                  width: 106.h),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImagenpilotoganador,
                                                  height: 40.v,
                                                  width: 38.h,
                                                  radius: BorderRadius.circular(
                                                      19.h),
                                                  margin: EdgeInsets.only(
                                                      left: 22.h,
                                                      top: 5.v,
                                                      bottom: 5.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 22.h,
                                                      top: 17.v,
                                                      bottom: 14.v),
                                                  child: Text(
                                                      resultado == null
                                                          ? "Puntos: ".tr
                                                          : "Puntos: " +
                                                              resultado!
                                                                  .first.points,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodyMediumFormula1))
                                            ]))
                                      ])),
                              CustomElevatedButton(
                                  height: 95.v,
                                  text: "lbl_crear_grupo".tr,
                                  margin: EdgeInsets.only(
                                      left: 16.h, top: 50.v, right: 16.h),
                                  buttonStyle:
                                      CustomButtonStyles.outlinePrimaryTL8,
                                  buttonTextStyle: CustomTextStyles
                                      .displaySmallWhiteA70001Medium,
                                  onTap: () {
                                    onTapCreargrupo(context);
                                  }),
                              CustomElevatedButton(
                                  height: 95.v,
                                  text: "lbl_unirse_a_grupo".tr,
                                  margin: EdgeInsets.only(
                                      left: 16.h, top: 18.v, right: 16.h),
                                  buttonStyle:
                                      CustomButtonStyles.outlinePrimaryTL8,
                                  buttonTextStyle: CustomTextStyles
                                      .displaySmallWhiteA70001Medium,
                                  onTap: () {
                                    onTapUnirseagrupo(context);
                                  }),
                              Container(
                                  margin: EdgeInsets.only(
                                      left: 15.h, top: 50.v, right: 15.h),
                                  padding: EdgeInsets.all(6.h),
                                  decoration: AppDecoration.outlinePrimary2
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderBL50),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("msg_siguiente_carrera".tr,
                                            style: CustomTextStyles
                                                .headlineMediumFormula1Regular),
                                        SizedBox(height: 4.v),
                                        Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 27.h,
                                                vertical: 4.v),
                                            decoration: AppDecoration
                                                .outlinePrimary3
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder28),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage2951x89,
                                                      height: 50.v,
                                                      width: 85.h),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 6.v,
                                                          right: 70.h),
                                                      child: Text("lbl".tr,
                                                          style: CustomTextStyles
                                                              .displaySmall35))
                                                ])),
                                        SizedBox(height: 24.v)
                                      ]))
                            ])))))));
  }

  /// Navigates to the avatarScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the avatarScreen.
  onTapDownloadone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.avatarScreen);
  }

  /// Navigates to the creargrupoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the creargrupoScreen.
  onTapCreargrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creargrupoScreen);
  }

  /// Navigates to the aAdirgrupoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the aAdirgrupoScreen.
  onTapUnirseagrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aAdirgrupoScreen);
  }

  onTaplistaPilotos(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaPilotosScreen);
  }
}
