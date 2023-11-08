import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ListaCircuitosScreen extends StatelessWidget {
  const ListaCircuitosScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 9.v),
                          Text("lbl_circuitos".tr,
                              style: theme.textTheme.displayMedium),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 333.v,
                                  width: 288.h,
                                  margin:
                                      EdgeInsets.only(top: 17.v, right: 26.h),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 71.v,
                                                width: 277.h,
                                                margin: EdgeInsets.only(
                                                    bottom: 65.v),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2.v),
                                                decoration:
                                                    AppDecoration.fillWhiteA,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector1,
                                                          height: 65.v,
                                                          width: 273.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 1.h,
                                                                      top: 8.v),
                                                              child: Row(
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage32,
                                                                        height: 33
                                                                            .v,
                                                                        width: 97
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            top:
                                                                                10.v)),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 36
                                                                                .h),
                                                                        child: Text(
                                                                            "lbl_bak"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.displaySmall))
                                                                  ])))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapStackmiami(context);
                                                },
                                                child: Container(
                                                    height: 71.v,
                                                    width: 277.h,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v),
                                                    decoration: AppDecoration
                                                        .fillWhiteA,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  margin: EdgeInsets.only(
                                                                      right:
                                                                          3.h),
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          27.h,
                                                                      vertical:
                                                                          7.v),
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: fs.Svg(ImageConstant
                                                                              .imgVector1),
                                                                          fit: BoxFit
                                                                              .cover)),
                                                                  child: Column(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                      children: [SizedBox(height: 7.v), Text("lbl_miami".tr, style: theme.textTheme.displaySmall)]))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage34,
                                                              height: 60.v,
                                                              width: 103.h,
                                                              alignment: Alignment
                                                                  .bottomLeft)
                                                        ])))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapStackvectorone(context);
                                                },
                                                child: Container(
                                                    height: 71.v,
                                                    width: 288.h,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1.v),
                                                    decoration: AppDecoration
                                                        .fillWhiteA,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage31,
                                                              height: 66.v,
                                                              width: 88.h,
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          4.h)),
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVector1,
                                                              height: 65.v,
                                                              width: 273.h,
                                                              alignment: Alignment
                                                                  .centerLeft),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Text(
                                                                  "lbl_melbourne"
                                                                      .tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineLarge))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapStackbahrin(context);
                                                },
                                                child: Container(
                                                    height: 71.v,
                                                    width: 277.h,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 2.v),
                                                    decoration: AppDecoration
                                                        .fillWhiteA,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Container(
                                                                  margin: EdgeInsets.only(
                                                                      right:
                                                                          3.h),
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          18.h,
                                                                      vertical:
                                                                          7.v),
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          image: fs.Svg(ImageConstant
                                                                              .imgVector1),
                                                                          fit: BoxFit
                                                                              .cover)),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        SizedBox(
                                                                            height:
                                                                                7.v),
                                                                        Text(
                                                                            "lbl_bahr_in"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.displaySmall)
                                                                      ]))),
                                                          CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgImage26,
                                                              height: 57.v,
                                                              width: 69.h,
                                                              alignment: Alignment
                                                                  .centerLeft)
                                                        ])))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: 71.v,
                                                width: 277.h,
                                                margin:
                                                    EdgeInsets.only(top: 66.v),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 2.v),
                                                decoration:
                                                    AppDecoration.fillWhiteA,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgVector1,
                                                          height: 65.v,
                                                          width: 273.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          2.h),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgImage2951x89,
                                                                        height: 51
                                                                            .v,
                                                                        width: 89
                                                                            .h),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 34
                                                                                .h,
                                                                            top: 2
                                                                                .v,
                                                                            bottom: 5
                                                                                .v),
                                                                        child: Text(
                                                                            "lbl_yeda"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.displaySmall))
                                                                  ])))
                                                    ])))
                                      ])))
                        ]))))));
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

  /// Navigates to the circuitoBahrInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the circuitoBahrInScreen.
  onTapStackbahrin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.circuitoBahrInScreen);
  }
}
