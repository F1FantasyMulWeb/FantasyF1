import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

class MainScreenMenuScreen extends StatelessWidget {
  const MainScreenMenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 764.v,
                    width: 359.h,
                    margin: EdgeInsets.only(right: 1.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDownload,
                          height: 30.v,
                          width: 33.h,
                        ),
                        Opacity(
                          opacity: 0.72,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 763.v,
                              width: 359.h,
                              decoration: BoxDecoration(
                                color:
                                    theme.colorScheme.primary.withOpacity(0.61),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12.h,
                              vertical: 22.v,
                            ),
                            decoration: AppDecoration.outlinePrimary4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  alignment: Alignment.centerRight,
                                ),
                                SizedBox(height: 20.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogo,
                                  height: 40.v,
                                  width: 174.h,
                                  alignment: Alignment.center,
                                ),
                                SizedBox(height: 10.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 189.h,
                                    child: Divider(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 10.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPerson,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 22.h,
                                          top: 9.v,
                                          bottom: 7.v,
                                        ),
                                        child: Text(
                                          "lbl_circuitos".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 27.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPerson,
                                        height: 34.v,
                                        width: 36.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 19.h,
                                          top: 8.v,
                                          bottom: 8.v,
                                        ),
                                        child: Text(
                                          "lbl_escuder_a".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 28.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPerson,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 24.h,
                                          top: 9.v,
                                          bottom: 3.v,
                                        ),
                                        child: Text(
                                          "lbl_pilotos".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 24.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 189.h,
                                    child: Divider(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 23.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGroupiconsign,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 22.h,
                                          top: 10.v,
                                          bottom: 6.v,
                                        ),
                                        child: Text(
                                          "lbl_grupos".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 25.v),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 189.h,
                                    child: Divider(),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6.h,
                                    top: 16.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgPerson,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 21.h,
                                          top: 7.v,
                                          bottom: 5.v,
                                        ),
                                        child: Text(
                                          "lbl_perfil".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    top: 14.v,
                                    bottom: 14.v,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgSearch,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 19.h,
                                          top: 8.v,
                                          bottom: 4.v,
                                        ),
                                        child: Text(
                                          "lbl_ajustes".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
