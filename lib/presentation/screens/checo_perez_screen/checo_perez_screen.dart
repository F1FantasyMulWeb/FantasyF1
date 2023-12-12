import 'package:fantasyf1/api/listaPilotos.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/api/manejoDeLaInformcion.dart';
import 'package:flutter/material.dart';

import '../../../api/modelo/RaceEventModel.dart';

class ChecoPerezScreen extends StatelessWidget {
  final Driver driver;
  ChecoPerezScreen({Key? key, required this.driver}) : super(key: key);

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
                                                              driver.givenName +
                                                                  ' ' +
                                                                  driver
                                                                      .familyName,
                                                              style: CustomTextStyles
                                                                  .displaySmallWhiteA70001,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                          CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage28,
                                                            height: 29.v,
                                                            width: 57.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    top: 41.v,
                                                                    right: 33.h,
                                                                    bottom:
                                                                        41.v),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgDriver(
                                                          driver.driverId,
                                                          0) /*==
                                                          null
                                                      ? ImageConstant
                                                          .imageNotFound
                                                      : ImageConstant.imgDriver(
                                                          driver.driverId, 0)*/
                                                  ,
                                                  height: 291.v,
                                                  width: 271.h,
                                                  alignment:
                                                      Alignment.bottomCenter)
                                            ])),
                                    Container(
                                        width: 215.h,
                                        margin: EdgeInsets.only(
                                            left: 35.h, top: 40.v),
                                        child: Text('${informacionPiloto()}',
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
    Navigator.pushNamed(context, AppRoutes.checoPerezScreen);
  }

  String informacionPiloto() {
    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.write("Nombre: " + driver.givenName + "\n");
    stringBuffer.write("Nombre familia: " + driver.familyName + "\n");
    stringBuffer.write("Fecha de nacimiento: " +
        driver.dateOfBirth.format('dd-MM-yyyy') +
        "\n");
    stringBuffer.write("Nacionalidad: " + driver.nationality + "\n");
    stringBuffer.write("Codigo: " + driver.code + "\n");
    stringBuffer.write("Numero: " + driver.permanentNumber + "\n");

    String info = stringBuffer.toString();
    return info;
  }
}
