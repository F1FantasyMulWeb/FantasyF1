import 'package:fantasyf1/api/configuracionApi.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../api/modelo/RaceEventModel.dart';

class ListaPilotosScreen extends StatefulWidget {
  const ListaPilotosScreen({Key? key}) : super(key: key);

  @override
  _ListaPilotosScreen createState() => _ListaPilotosScreen();
}

class _ListaPilotosScreen extends State<ListaPilotosScreen> {
  RaceEventModel? carGlobal = null;
  List<Result>? result = null;

  Future<RaceEventModel?> initializeCarGlobal() async {
    Client cliente = Client();
    var gl = await cliente
        .getResults("current", "5", "results", queryParams: "limit=15")
        .whenComplete(() => print("cargado"));
    print(carGlobal);
    setState(() {
      carGlobal = gl;
      result = carGlobal!.mrData.raceTable.races.first.results;
    });
    return null;
  }

  @override
  void initState() {
    initializeCarGlobal();

    super.initState();
    //   Client cliente = Client();
    //RaceEventModel? carGlobal;
/*    Stream<RaceEventModel?> obternerInfoCarrera() async* {
      yield await cliente.getResults("current", "last", "results",queryParams: "limit=15");
    }

    Future<void> escucharStreamCarrera() async {
        obternerInfoCarrera().listen((RaceEventModel? gl) {
        //this.carGlobal = gl!;
        print(gl);
        carGlobal!.mrData.raceTable.races.toList().first.results.toList().forEach((element) {print(element.driver.familyName);});
      });


    }
escucharStreamCarrera();*/
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Image.asset(
                ImageConstant.imgLogo,
                fit: BoxFit.contain,
                height: 50, // Ajusta este valor para cambiar el tamaño del logo
              ),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  iconSize:
                      35, // Ajusta este valor para cambiar el tamaño del icono del menú
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            drawer: Drawer(
                // Aquí puedes poner el contenido de tu Drawer
                ),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Divider(),
                          SizedBox(height: 12.v),
                          Text("lbl_pilotos2".tr,
                              style: theme.textTheme.displayMedium),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 46.h, top: 14.v, right: 37.h),
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVerstappen,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize),
                                    SizedBox(height: 2.v),
                                    SizedBox(
                                        height: 66.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: result == null
                                                      ? ImageConstant
                                                          .imageNotFound
                                                      : ImageConstant.imgDriver(
                                                          result![0]
                                                              .driver
                                                              .driverId,
                                                          0),
                                                  height: 66.v,
                                                  width: 62.h,
                                                  radius: BorderRadius.circular(
                                                      31.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector1,
                                                  height: 65.v,
                                                  width: 273.h,
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    onTapImgVectoroneone(
                                                        context);
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 19.v),
                                                      child: Text(
                                                          "lbl_max_verstappen"
                                                              .tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleLarge)))
                                            ])),
                                    SizedBox(
                                        height: 66.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: result == null
                                                      ? ImageConstant
                                                          .imageNotFound
                                                      : ImageConstant.imgDriver(
                                                          result![1]
                                                              .driver
                                                              .driverId,
                                                          0),
                                                  height: 66.v,
                                                  width: 62.h,
                                                  radius: BorderRadius.circular(
                                                      31.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector1,
                                                  height: 65.v,
                                                  width: 273.h,
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    onTapImgVectoroneone(
                                                        context);
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 19.v),
                                                      child: Text(
                                                          result == null
                                                              ? "lbl_perez".tr
                                                              : result![1]
                                                                  .driver
                                                                  .familyName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleLarge)))
                                            ])),
                                    SizedBox(
                                        height: 66.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: result == null
                                                      ? ImageConstant
                                                          .imageNotFound
                                                      : ImageConstant.imgDriver(
                                                          result![2]
                                                              .driver
                                                              .driverId,
                                                          0),
                                                  height: 66.v,
                                                  width: 62.h,
                                                  radius: BorderRadius.circular(
                                                      31.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector1,
                                                  height: 65.v,
                                                  width: 273.h,
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    onTapImgVectoroneone(
                                                        context);
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 19.v),
                                                      child: Text(
                                                          carGlobal == null
                                                              ? "lbl_perez".tr
                                                              : carGlobal!
                                                                  .mrData
                                                                  .raceTable
                                                                  .races
                                                                  .toList()
                                                                  .first
                                                                  .results[2]
                                                                  .driver
                                                                  .familyName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleLarge)))
                                            ])),
                                    SizedBox(
                                        height: 66.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: result == null
                                                      ? ImageConstant
                                                          .imageNotFound
                                                      : ImageConstant.imgDriver(
                                                          result![3]
                                                              .driver
                                                              .driverId,
                                                          0),
                                                  height: 66.v,
                                                  width: 62.h,
                                                  radius: BorderRadius.circular(
                                                      31.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector1,
                                                  height: 65.v,
                                                  width: 273.h,
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    onTapPerez(context);
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 19.v),
                                                      child: Text(
                                                          carGlobal == null
                                                              ? "lbl_perez".tr
                                                              : carGlobal!
                                                                  .mrData
                                                                  .raceTable
                                                                  .races
                                                                  .toList()
                                                                  .first
                                                                  .results[3]
                                                                  .driver
                                                                  .familyName,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleLarge)))
                                            ])),
                                    for (var i in result!)
                                      Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath: result == null
                                                    ? ImageConstant
                                                        .imageNotFound
                                                    : ImageConstant.imgDriver(
                                                        i.driver.driverId, 0),
                                                height: 66.v,
                                                width: 62.h,
                                                radius:
                                                    BorderRadius.circular(31.h),
                                                alignment:
                                                    Alignment.centerLeft),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgVector1,
                                                height: 65.v,
                                                width: 273.h,
                                                alignment: Alignment.center,
                                                onTap: () {
                                                  onTapPerez(context);
                                                }),
                                            Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 19.v),
                                                    child: Text(
                                                        carGlobal == null
                                                            ? "lbl_perez".tr
                                                            : i.driver
                                                                    .givenName +
                                                                ' ' +
                                                                i.driver
                                                                    .familyName,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: theme.textTheme
                                                            .titleLarge)))
                                          ]),
                                  ]))
                        ]))))));
  }

  /// Navigates to the pilotoVerstapenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the pilotoVerstapenScreen.
  onTapImgVectoroneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pilotoVerstapenScreen);
  }

  onTapPerez(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checoPerezScreen);
  }
}
