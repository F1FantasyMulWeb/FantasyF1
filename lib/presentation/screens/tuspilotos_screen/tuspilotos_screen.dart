import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class TuspilotosScreen extends StatelessWidget {
  const TuspilotosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 133.v,
                leadingWidth: 36.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgClose,
                    margin: EdgeInsets.only(left: 20.h, bottom: 53.v),
                    onTap: () {
                      onTapCloseone(context);
                    }),
                centerTitle: true,
                title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_garaje2".tr,
                          style: CustomTextStyles.displayLarge64),
                      TextSpan(text: " ")
                    ]),
                    textAlign: TextAlign.left)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 7.v),
                              decoration: AppDecoration.outlinePrimary2
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder47),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("msg_siguiente_carrera".tr,
                                        style: theme.textTheme.titleLarge),
                                    SizedBox(height: 7.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.h),
                                        decoration: AppDecoration
                                            .fillOnPrimaryContainer
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder31),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage31,
                                                  height: 66.v,
                                                  width: 88.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 5.v)),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 17.v,
                                                      right: 93.h,
                                                      bottom: 14.v),
                                                  child: Text("lbl".tr,
                                                      style: theme.textTheme
                                                          .headlineLarge))
                                            ])),
                                    SizedBox(height: 7.v)
                                  ])),
                          SizedBox(height: 15.v),
                          Text("lbl_activos".tr,
                              style: theme.textTheme.displaySmall),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, top: 7.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapAlonso(context);
                                        },
                                        child: Container(
                                            padding: EdgeInsets.all(8.h),
                                            decoration: AppDecoration.fillTeal
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgElnanopapauntiburon,
                                                            height:
                                                                48.adaptSize,
                                                            width: 48.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(
                                                                    24.h)),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 41.h,
                                                                    top: 10.v,
                                                                    bottom:
                                                                        13.v),
                                                            child: Text(
                                                                "lbl".tr,
                                                                style: CustomTextStyles
                                                                    .titleLargeWhiteA70001))
                                                      ]),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.h,
                                                          top: 32.v),
                                                      child: Text(
                                                          "lbl_puntos".tr,
                                                          style: CustomTextStyles
                                                              .titleLargeWhiteA70001)),
                                                  SizedBox(height: 8.v),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage7,
                                                      height: 56.v,
                                                      width: 128.h,
                                                      alignment:
                                                          Alignment.center),
                                                  SizedBox(height: 8.v)
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapCheco(context);
                                        },
                                        child: Container(
                                            height: 193.v,
                                            width: 181.h,
                                            margin: EdgeInsets.only(left: 8.h),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .center,
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 7.h,
                                                                  right: 10.h),
                                                          decoration: AppDecoration
                                                              .outlinePrimary1,
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 4
                                                                          .h),
                                                              padding:
                                                                  EdgeInsets.all(
                                                                      8.h),
                                                              decoration: AppDecoration
                                                                  .fillGray
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder15),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgChecoperez,
                                                                        height: 48
                                                                            .adaptSize,
                                                                        width: 48
                                                                            .adaptSize,
                                                                        radius: BorderRadius.circular(24
                                                                            .h),
                                                                        margin: EdgeInsets.only(
                                                                            bottom:
                                                                                129.v)),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 41
                                                                                .h,
                                                                            top: 10
                                                                                .v,
                                                                            bottom: 142
                                                                                .v),
                                                                        child: Text(
                                                                            "lbl"
                                                                                .tr,
                                                                            style:
                                                                                CustomTextStyles.titleLargeWhiteA70001))
                                                                  ])))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage8,
                                                      height: 63.v,
                                                      width: 181.h,
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      margin: EdgeInsets.only(
                                                          bottom: 19.v)),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 34.h),
                                                          child: Text(
                                                              "lbl_puntos".tr,
                                                              style: CustomTextStyles
                                                                  .titleLargeWhiteA70001)))
                                                ])))
                                  ])),
                          SizedBox(height: 17.v),
                          Text("lbl_en_garaje".tr,
                              style: CustomTextStyles
                                  .headlineLargeOnSecondaryContainer),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 52.h, top: 64.v, right: 48.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIconmaxverst,
                                        height: 81.adaptSize,
                                        width: 81.adaptSize,
                                        radius: BorderRadius.circular(40.h)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage12,
                                        height: 79.v,
                                        width: 81.h,
                                        radius: BorderRadius.circular(39.h))
                                  ]))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the elNanoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the elNanoScreen.
  onTapAlonso(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.elNanoScreen);
  }

  /// Navigates to the checoPerezScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the checoPerezScreen.
  onTapCheco(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checoPerezScreen);
  }
}
