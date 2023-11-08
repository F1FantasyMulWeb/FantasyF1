import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_title.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AjustesScreen extends StatelessWidget {
  const AjustesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: 134.v,
                leadingWidth: 36.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgClose,
                    margin: EdgeInsets.only(left: 20.h, bottom: 54.v),
                    onTap: () {
                      onTapCloseone(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_ajustes".tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 36.v),
                    child: Container(
                        height: 269.v,
                        width: 277.h,
                        margin: EdgeInsets.only(
                            left: 41.h, right: 41.h, bottom: 5.v),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector1,
                                            height: 65.v,
                                            width: 273.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage29,
                                                      height: 51.v,
                                                      width: 89.h,
                                                      margin: EdgeInsets.only(
                                                          bottom: 6.v)),
                                                  Container(
                                                      width: 152.h,
                                                      margin: EdgeInsets.only(
                                                          left: 27.h),
                                                      child: Text(
                                                          "msg_cambiar_contrase_a"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .headlineSmall))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  margin: EdgeInsets.only(top: 66.v),
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
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage45,
                                            height: 58.adaptSize,
                                            width: 58.adaptSize,
                                            alignment: Alignment.bottomLeft,
                                            margin:
                                                EdgeInsets.only(left: 22.h)),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                width: 113.h,
                                                margin: EdgeInsets.only(
                                                    right: 24.h),
                                                child: Text(
                                                    "lbl_cambiar_nombre".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .headlineSmall)))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
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
                                                          .imgImage47,
                                                      height: 47.adaptSize,
                                                      width: 47.adaptSize,
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 7.v)),
                                                  Container(
                                                      width: 85.h,
                                                      margin: EdgeInsets.only(
                                                          left: 72.h),
                                                      child: Text(
                                                          "lbl_borrar_grupo".tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .headlineSmall))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 71.v,
                                  width: 277.h,
                                  margin: EdgeInsets.only(bottom: 66.v),
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  decoration: AppDecoration.fillWhiteA,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage46,
                                            height: 47.adaptSize,
                                            width: 47.adaptSize),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                width: 113.h,
                                                margin: EdgeInsets.only(
                                                    right: 27.h),
                                                child: Text(
                                                    "lbl_cambiar_imagen".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: theme.textTheme
                                                        .headlineSmall)))
                                      ])))
                        ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
