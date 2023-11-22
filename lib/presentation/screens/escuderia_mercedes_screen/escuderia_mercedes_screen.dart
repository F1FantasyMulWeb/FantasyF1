import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../api/listaEscuderias.dart';
import '../../../api/manejoDeLaInformcion.dart';

ManejoDeLaInformcion manejoDeLaInformcion = new ManejoDeLaInformcion();

ListaEscuderias listaEscuderias = new ListaEscuderias();

class EscuderiaMercedesScreen extends StatefulWidget {
  EscuderiaMercedesScreen({Key? key}) : super(key: key);

  @override
  _EscuderiaMercedesScreen createState() => _EscuderiaMercedesScreen();

  void setManejoDeLaInformcion(
      ManejoDeLaInformcion manejoDeLaInformcionEntrada) {
    manejoDeLaInformcion = manejoDeLaInformcionEntrada;
  }
}

class _EscuderiaMercedesScreen extends State<EscuderiaMercedesScreen> {
  @override
  void initState() {
    super.initState();
    listaEscuderias = manejoDeLaInformcion.getListaEscuderias();
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
                              padding: EdgeInsets.only(bottom: 53.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: double.maxFinite,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 14.h, vertical: 11.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup19),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 57.h),
                                                  child: Text(nombreCircuito().toString().tr,
                                                      style: CustomTextStyles
                                                          .displaySmallWhiteA70001)),
                                              SizedBox(height: 34.v),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMercedesphotoroom,
                                                  height: 183.v,
                                                  width: 326.h),
                                              SizedBox(height: 78.v)
                                            ])),
                                    Container(
                                        height: 290.v,
                                        width: 288.h,
                                        margin: EdgeInsets.only(
                                            left: 28.h, top: 40.v),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                      width: 253.h,
                                                      margin: EdgeInsets.only(
                                                          left: 7.h),
                                                      child: Text(
                                                          informacionEscuderiaMercedes().toString()
                                                              .tr,
                                                          maxLines: 12,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: CustomTextStyles
                                                              .bodyMediumJacquesFrancois))),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgIconmaxverst3,
                                                  height: 45.adaptSize,
                                                  width: 45.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      22.h),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                      bottom: 24.v)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgArrowup,
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                      right: 13.h,
                                                      bottom: 74.v),
                                                  onTap: () {
                                                    onTapImgArrowupone(context);
                                                  }),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height: 33.adaptSize,
                                                  width: 33.adaptSize,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  onTap: () {
                                                    onTapImgArrowleftone(
                                                        context);
                                                  })
                                            ]))
                                  ]))))
                ]))));
  }

  /// Navigates to the escuderiaAstonMartinScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the escuderiaAstonMartinScreen.
  onTapImgArrowupone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.escuderiaAstonMartinScreen);
  }

  /// Navigates to the listaEscuderAsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listaEscuderAsScreen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaEscuderAsScreen);
  }

  informacionEscuderiaMercedes() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Nacionalidad: " +
        listaEscuderias
            .getListaEscuderia()[7]
            .nationality
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    stringBuffer.write("Nombre: " +
        listaEscuderias
            .getListaEscuderia()[7]
            .name
            .toString()
            .replaceAll("\"", ""));
    stringBuffer.write("\n");
    return stringBuffer;
  }

  nombreCircuito() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write(listaEscuderias
        .getListaEscuderia()[7]
        .constructorId
        .toString()
        .replaceAll("\"", "")
        .replaceAll("_", " ")
        .toUpperCase());
    return stringBuffer;
  }
}
