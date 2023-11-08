import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AvatarOneScreen extends StatelessWidget {
  const AvatarOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: Column(
            children: [
              AppbarImage1(
                svgPath: ImageConstant.imgMenu,
                margin: EdgeInsets.only(
                  left: 31.h,
                  right: 296.h,
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
              ),
            ],
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                right: 13.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload169x169,
                    height: 169.adaptSize,
                    width: 169.adaptSize,
                    radius: BorderRadius.circular(
                      84.h,
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Text(
                    "lbl".tr,
                    style: CustomTextStyles.displayMediumOnPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 33.v,
                      right: 8.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 106.h,
                          margin: EdgeInsets.only(
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_1er_puesto2".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: SizedBox(
                            height: 126.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.primary.withOpacity(1),
                              endIndent: 2.h,
                            ),
                          ),
                        ),
                        Container(
                          width: 65.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_podio2".tr,
                                  style: CustomTextStyles.titleLarge_1,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: SizedBox(
                            height: 126.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.primary.withOpacity(1),
                              indent: 2.h,
                            ),
                          ),
                        ),
                        Container(
                          width: 82.h,
                          margin: EdgeInsets.only(
                            left: 21.h,
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_puntos3".tr,
                                  style: CustomTextStyles.titleLarge_1,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  SizedBox(
                    height: 136.v,
                    width: 336.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 134.v,
                            width: 336.h,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_logros".tr,
                            style: CustomTextStyles.titleLargeOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
