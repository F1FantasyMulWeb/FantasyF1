import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_circleimage.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class MainscreensinligasScreen extends StatelessWidget {
  const MainscreensinligasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
            child: Scaffold(
                appBar: CustomAppBar(
                    leadingWidth: 54.h,
                    leading: AppbarImage(
                        svgPath: ImageConstant.imgMenuGray800,
                        margin: EdgeInsets.only(
                            left: 30.h, top: 19.v, bottom: 20.v)),
                    centerTitle: true,
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
                                                  child: Text("lbl_puntos".tr,
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
}
