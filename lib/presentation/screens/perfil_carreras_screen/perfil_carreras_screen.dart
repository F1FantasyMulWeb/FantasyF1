import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class PerfilCarrerasScreen extends StatelessWidget {
  const PerfilCarrerasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 69.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 12.h, right: 4.h, bottom: 33.v),
                              child: Column(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu,
                                    height: 32.v,
                                    width: 33.h,
                                    alignment: Alignment.centerLeft,
                                    margin: EdgeInsets.only(left: 19.h)),
                                SizedBox(height: 2.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgDownload,
                                    height: 169.adaptSize,
                                    width: 169.adaptSize,
                                    radius: BorderRadius.circular(84.h)),
                                SizedBox(height: 16.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtOne(context);
                                    },
                                    child: Text("lbl".tr,
                                        style: CustomTextStyles
                                            .displayMediumOnPrimary)),
                                SizedBox(height: 2.v),
                                SizedBox(
                                    height: 427.v,
                                    width: 343.h,
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 6.h),
                                                  decoration: AppDecoration
                                                      .fillBlueGray
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        30.h,
                                                                    vertical:
                                                                        1.v),
                                                            decoration: AppDecoration
                                                                .fillOnPrimaryContainer
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder6),
                                                            child: Text(
                                                                "lbl_pilotos2"
                                                                    .tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .displaySmall)),
                                                        SizedBox(height: 10.v),
                                                        Text("lbl_activos".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: GestureDetector(
                                                                onTap: () {
                                                                  onTapAlonso(
                                                                      context);
                                                                },
                                                                child: Container(
                                                                    margin: EdgeInsets.only(left: 3.h, top: 4.v, right: 3.h),
                                                                    padding: EdgeInsets.all(8.h),
                                                                    decoration: AppDecoration.fillTeal.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 40
                                                                                  .h),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgElnanopapauntiburon, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h)),
                                                                                Padding(padding: EdgeInsets.only(top: 10.v, bottom: 13.v), child: Text("lbl".tr, style: CustomTextStyles.titleLargeWhiteA70001))
                                                                              ])),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 15
                                                                                  .h,
                                                                              top: 32
                                                                                  .v),
                                                                          child: Text(
                                                                              "lbl_puntos".tr,
                                                                              style: CustomTextStyles.titleLargeWhiteA70001)),
                                                                      SizedBox(
                                                                          height:
                                                                              8.v),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgImage7,
                                                                          height: 56
                                                                              .v,
                                                                          width: 128
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      SizedBox(
                                                                          height:
                                                                              8.v)
                                                                    ])))),
                                                        SizedBox(height: 21.v),
                                                        Text("lbl_en_garaje".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge),
                                                        Padding(
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    53.h,
                                                                    2.v,
                                                                    53.h,
                                                                    21.v),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgIconmaxverst,
                                                                      height: 81
                                                                          .adaptSize,
                                                                      width: 81
                                                                          .adaptSize,
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              40.h)),
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgImage12,
                                                                      height:
                                                                          79.v,
                                                                      width:
                                                                          81.h,
                                                                      radius: BorderRadius
                                                                          .circular(
                                                                              39.h))
                                                                ]))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 193.v,
                                                  width: 181.h,
                                                  margin: EdgeInsets.only(
                                                      top: 85.v),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            7.h,
                                                                        right: 10
                                                                            .h),
                                                                decoration:
                                                                    AppDecoration
                                                                        .outlinePrimary1,
                                                                child:
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 4
                                                                                .h),
                                                                        padding: EdgeInsets.all(8
                                                                            .h),
                                                                        decoration: AppDecoration.fillGray.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder15),
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgChecoperez, height: 48.adaptSize, width: 48.adaptSize, radius: BorderRadius.circular(24.h), margin: EdgeInsets.only(bottom: 129.v)),
                                                                              Padding(padding: EdgeInsets.only(top: 10.v, right: 40.h, bottom: 142.v), child: Text("lbl".tr, style: CustomTextStyles.titleLargeWhiteA70001))
                                                                            ])))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImage8,
                                                            height: 63.v,
                                                            width: 181.h,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        19.v)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 34
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_puntos"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .titleLargeWhiteA70001)))
                                                      ])))
                                        ]))
                              ]))))
                ]))));
  }

  /// Navigates to the avatarOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the avatarOneScreen.
  onTapTxtOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editAvatarScreen);
  }

  /// Navigates to the elNanoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the elNanoScreen.
  onTapAlonso(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.elNanoScreen);
  }
}
