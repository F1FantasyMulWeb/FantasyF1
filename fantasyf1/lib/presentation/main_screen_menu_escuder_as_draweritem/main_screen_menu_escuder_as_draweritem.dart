import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainScreenMenuEscuderAsDraweritem extends StatelessWidget {
  const MainScreenMenuEscuderAsDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(right: 135.h),
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgClose,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 12.h),
              ),
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 40.v,
                width: 174.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Divider(
                    indent: 15.h,
                    endIndent: 21.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
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
              SizedBox(height: 12.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.fillRed,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPerson,
                      height: 34.v,
                      width: 36.h,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 10.v,
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
                  left: 21.h,
                  top: 15.v,
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
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 24.v),
                  child: Divider(
                    indent: 15.h,
                    endIndent: 21.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  top: 23.v,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroupiconsign,
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
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 25.v),
                  child: Divider(
                    indent: 15.h,
                    endIndent: 21.h,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
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
                  left: 23.h,
                  top: 27.v,
                  bottom: 27.v,
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
    );
  }
}
