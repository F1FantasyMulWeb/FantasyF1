import 'package:fantasyf1/api/manejoDeLaInformcion.dart';
import 'package:fantasyf1/core/app_export.dart';
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
                                              Positioned(
                                                top: 0,
                                                // Ajusta esto para cambiar la posición superior de la imagen
                                                bottom: 195.v,
                                                // Ajusta esto para cambiar la posición inferior de la imagen
                                                left: 0,
                                                // Ajusta esto para cambiar la posición izquierda de la imagen
                                                right: 0,
                                                // Ajusta esto para cambiar la posición derecha de la imagen
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          ImageConstant
                                                              .imgGroup37),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 20.v,
                                                bottom: 0.v,
                                                left: 20,
                                                right: 20,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 1.h),
                                                  child: Text(
                                                    nombrePiloto()
                                                        .toString()
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .displaySmallWhiteA70001,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0.v,
                                                child: Align(
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
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .bodyMediumJacquesFrancois))),
                                              ),
                                              Positioned(
                                                top: 75.v,
                                                // Ajusta esto para cambiar la posición superior de CustomImageView
                                                // Puedes agregar las propiedades bottom, left y right si lo necesitas
                                                child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgNano,
                                                  height: 425.v,
                                                  width: 360.h,
                                                ),
                                              ),
                                              Positioned(
                                                right: 50.v,
                                                top: 125.v,
                                                child: Container(
                                                  width: 57.h,
                                                  height: 29.v,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          ImageConstant
                                                              .imgImage2829x57),
                                                      fit: BoxFit
                                                          .cover, // Esto hace que la imagen se ajuste al tamaño del Container
                                                    ),
                                                  ),
                                                ),
                                              ),
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
        .givenName
        .toString()
        .replaceAll("\"", "")
        .toUpperCase());
    return stringBuffer;
  }
}
