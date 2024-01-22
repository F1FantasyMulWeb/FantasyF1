import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image_1.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class AjustesOneScreen extends StatelessWidget {
  const AjustesOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 64.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)),
                centerTitle: true,
                title: AppbarImage1(imagePath: ImageConstant.imgLogo)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Divider(),
                          SizedBox(height: 21.v),
                          GestureDetector(
                              onTap: () {
                                onTapStackvectorone(context);
                              },
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector1,
                                            height: 65.v,
                                            width: 273.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 2.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage29,
                                                          height: 51.v,
                                                          width: 89.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 6.v)),
                                                      Container(
                                                          width: 152.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 5.h),
                                                          child: Text(
                                                              "msg_cambiar_contrase_a"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall))
                                                    ])))
                                      ]))),
                          SizedBox(height: 24.v),
                          GestureDetector(
                              onTap: () {
                                onTapStackcerrarsesi(context);
                              },
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.img12506781,
                                            height: 42.adaptSize,
                                            width: 42.adaptSize),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                width: 89.h,
                                                margin: EdgeInsets.only(
                                                    right: 70.h),
                                                child: Text(
                                                    "lbl_cerrar_sesi_n".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .headlineSmall)))
                                      ]))),
                          SizedBox(height: 24.v),
                          Container(
                              height: 71.v,
                              width: 277.h,
                              decoration: AppDecoration.fillWhiteA,
                              child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 273.h,
                                            margin: EdgeInsets.only(
                                                top: 3.v,
                                                right: 3.h,
                                                bottom: 2.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 49.h,
                                                vertical: 1.v),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: fs.Svg(ImageConstant
                                                        .imgVector1),
                                                    fit: BoxFit.cover)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img1096021,
                                                      height: 20.adaptSize,
                                                      width: 20.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 33.v,
                                                          bottom: 8.v)),
                                                  Container(
                                                      width: 93.h,
                                                      margin: EdgeInsets.only(
                                                          left: 54.h,
                                                          bottom: 3.v),
                                                      child: Text(
                                                          "lbl_borrar_cuenta"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .headlineSmall))
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSinttulo1,
                                        height: 71.v,
                                        width: 100.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 11.h))
                                  ])),
                          SizedBox(height: 22.v),
                          GestureDetector(
                              onTap: () {
                                onTapStackvectorone1(context);
                              },
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector1,
                                            height: 65.v,
                                            width: 273.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgSinttulo2,
                                                      height: 57.adaptSize,
                                                      width: 57.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 14.h,
                                                          top: 14.v,
                                                          bottom: 13.v),
                                                      child: Text(
                                                          "lbl_informaci_n".tr,
                                                          style: theme.textTheme
                                                              .headlineSmall))
                                                ]))
                                      ])))
                        ]))))));
  }

  /// Navigates to the cambiarcontraseA3screenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cambiarcontraseA3screenScreen.
  onTapStackvectorone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cambiarcontraseA3screenScreen);
  }

  /// Navigates to the loginscreenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginscreenScreen.
  onTapStackcerrarsesi(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }

  /// Navigates to the informaciNScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the informaciNScreen.
  onTapStackvectorone1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.informaciNScreen);
  }
}
