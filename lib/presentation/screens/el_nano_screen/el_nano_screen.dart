import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/api/manejoDeLaInformcion.dart';
import 'package:fantasyf1/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

import '../../../api/listaPilotos.dart';

ManejoDeLaInformcion manejoDeLaInformcion = new ManejoDeLaInformcion();

ListaPilotos listaPilotos = new ListaPilotos();

class ElNanoScreen extends StatefulWidget {
  ElNanoScreen({Key? key}) : super(key: key);

  @override
  _ElNanoScreen createState() => _ElNanoScreen();

  void setManejoDeLaInformcion(
      ManejoDeLaInformcion manejoDeLaInformcionEntrada) {
    manejoDeLaInformcion = manejoDeLaInformcionEntrada;
  }
}

class _ElNanoScreen extends State<ElNanoScreen> {
  @override
  void initState() {
    super.initState();
    listaPilotos = manejoDeLaInformcion.getListaPilotos();
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
                                        height: 587.v,
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(
                                                                  ImageConstant
                                                                      .imgGroup3),
                                                              fit: BoxFit
                                                                  .cover)),
                                                      child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                              horizontal: 3.h,
                                                              vertical: 5.v),
                                                          decoration: BoxDecoration(
                                                              image: DecorationImage(
                                                                  image: AssetImage(
                                                                      ImageConstant
                                                                          .imgGroup37),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: 3
                                                                            .h),
                                                                    child: Text(
                                                                        nombrePiloto()
                                                                            .toString()
                                                                            .tr,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: CustomTextStyles
                                                                            .displaySmallWhiteA70001)),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage2829x57,
                                                                    height:
                                                                        29.v,
                                                                    width: 57.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 52
                                                                            .v,
                                                                        right: 34
                                                                            .h,
                                                                        bottom:
                                                                            52.v))
                                                              ])))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      width: 215.h,
                                                      margin: EdgeInsets.only(
                                                          left: 35.h),
                                                      child: Text(
                                                          informacionPilotoNano()
                                                              .toString()
                                                              .tr,
                                                          maxLines: 9,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyMediumJacquesFrancois))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgNano,
                                                  height: 425.v,
                                                  width: 360.h,
                                                  alignment:
                                                      Alignment.topCenter,
                                                  margin: EdgeInsets.only(
                                                      top: 58.v))
                                            ])),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowup,
                                        height: 20.adaptSize,
                                        width: 20.adaptSize,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            top: 12.v, right: 57.h),
                                        onTap: () {
                                          onTapImgArrowupone(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 28.h, top: 5.v, right: 45.h),
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
                                                      top: 36.v, bottom: 3.v),
                                                  onTap: () {
                                                    onTapImgArrowleftone(
                                                        context);
                                                  }),
                                              Column(children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgElnanopapauntiburon45x45,
                                                    height: 45.adaptSize,
                                                    width: 45.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                            22.h)),
                                                SizedBox(height: 7.v),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 20.adaptSize,
                                                    width: 20.adaptSize)
                                              ])
                                            ]))
                                  ]))))
                ]))));
  }

  /// Navigates to the checoPerezScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checoPerezScreen.
  onTapImgArrowupone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checoPerezScreen);
  }

  /// Navigates to the listaPilotosScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listaPilotosScreen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaPilotosScreen);
  }

  informacionPilotoNano() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Nombre: " +
        listaPilotos
            .getListaPilotos()[1]
            .getGivenName()
            .toString()
            .replaceAll("\"", "") +
        "\n");
    stringBuffer.write("Nombre familia: " +
        listaPilotos
            .getListaPilotos()[1]
            .getFamilyName()
            .toString()
            .replaceAll("\"", "") +
        "\n");
    stringBuffer.write("Fecha de nacimiento: " +
        listaPilotos
            .getListaPilotos()[1]
            .getDateOfBirth()
            .toString()
            .replaceAll("\"", "") +
        "\n");
    stringBuffer.write("Nacionalidad: " +
        listaPilotos
            .getListaPilotos()[1]
            .getNacionality()
            .toString()
            .replaceAll("\"", "")
            .replaceAll("}", "")
            .replaceAll("]", "") +
        "\n");
    stringBuffer.write("Codigo: " +
        listaPilotos
            .getListaPilotos()[1]
            .getCode()
            .toString()
            .replaceAll("\"", "") +
        "\n");
    stringBuffer.write("Numero: " +
        listaPilotos
            .getListaPilotos()[1]
            .getPermanentNumber()
            .toString()
            .replaceAll("\"", "") +
        "\n");
    return stringBuffer;
  }

  nombrePiloto() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write(listaPilotos
        .getListaPilotos()[1]
        .driverId
        .toString()
        .replaceAll("\"", "")
        .toUpperCase());
    return stringBuffer;
  }
}
