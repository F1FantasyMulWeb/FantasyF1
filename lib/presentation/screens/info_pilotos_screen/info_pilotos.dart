import 'package:FantasyF1/api/configuracionApi.dart';
import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

import '../../../api/modelo/DriversModel.dart';

class Info_Pilotos extends StatelessWidget {
  Driver? driver;
  String? driverName;
  Info_Pilotos({super.key, required this.driver});
  Info_Pilotos.s({super.key, required this.driverName}) {
    setDriver(driverName);
  }
  setDriver(driverName) async {
    Client client = Client();
    driver = await client.getDriver(driverName!);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 59.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 50.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 375.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: LayoutBuilder(
                                                  builder:
                                                      (BuildContext context,
                                                      BoxConstraints
                                                      constraints) {
                                                    return Container(
                                                      width:
                                                      constraints.maxWidth,
                                                      height:
                                                      constraints.maxHeight,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup3),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      padding:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10.h,
                                                          vertical: 7.v),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                        children: [
                                                          Center(
                                                            child: Text(
                                                              driver == null
                                                                  ? "".tr
                                                                  : '${driver!.givenName} ${driver!.familyName}',
                                                              style: CustomTextStyles
                                                                  .displaySmallWhiteA70001,
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              AvifImage.asset(
                                                  ImageConstant.imgDriverAvif(
                                                      driver == null
                                                          ? "".tr
                                                          : driver!.driverId),
                                                  height: 250,
                                                  fit: BoxFit.scaleDown,
                                                  alignment:
                                                  Alignment.centerLeft),
                                              Positioned(
                                                top: -30.v,
                                                right: 33.h,
                                                bottom: 41.v,
                                                child: SizedBox(
                                                  width: 64.0,
                                                  height: 64.0,
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Image.asset(
                                                      ImageConstant.imgBandera(driver == null ? "".tr : driver!.nationality),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ])),
                                    Container(
                                        width: 215.h,
                                        margin: EdgeInsets.only(
                                            left: 35.h, top: 40.v),
                                        child: Text(informacionPiloto(),
                                            maxLines: 9,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumJacquesFrancois)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, top: 12.v, right: 44.h),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: 33.adaptSize,
                                                  width: 33.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 61.v, bottom: 3.v),
                                                  onTap: () {
                                                    onTapImgArrowleftone(
                                                        context);
                                                  }),
                                              Column(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowup,
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize),
                                                SizedBox(height: 6.v),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img_max_verstappen_icon,
                                                    height: 45.adaptSize,
                                                    width: 45.adaptSize,
                                                    radius:
                                                    BorderRadius.circular(
                                                        22.h)),
                                                SizedBox(height: 6.v),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize,
                                                    onTap: () {
                                                      onTapImgArrowdownone(
                                                          context);
                                                    })
                                              ])
                                            ]))
                                  ]))))
                ]))));
  }

  /// Navigates to the listaPilotosScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listaPilotosScreen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaPilotosScreen);
  }

  /// Navigates to the checoPerezScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checoPerezScreen.
  onTapImgArrowdownone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.infopilotos);
  }

  String informacionPiloto() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Nombre: " + driver!.givenName + "\n");
    stringBuffer.write("Nombre familia: " + driver!.familyName + "\n");
    stringBuffer.write("Fecha de nacimiento: " +
        driver!.dateOfBirth.format('dd-MM-yyyy') +
        "\n");
    stringBuffer.write("Nacionalidad: " + driver!.nationality + "\n");
    stringBuffer.write("Codigo: " + driver!.code + "\n");
    stringBuffer.write("Numero: " + driver!.permanentNumber + "\n");

    String info = stringBuffer.toString();
    return info;
  }
}