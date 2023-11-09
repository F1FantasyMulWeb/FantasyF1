import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ListaPilotosScreen extends StatelessWidget {
  const ListaPilotosScreen({Key? key}) : super(key: key);

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
                          SizedBox(height: 12.v),
                          Text("lbl_pilotos2".tr,
                              style: theme.textTheme.displayMedium),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 46.h, top: 14.v, right: 37.h),
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgVerstappen,
                                        height: 1.adaptSize,
                                        width: 1.adaptSize),
                                    SizedBox(height: 2.v),
                                    SizedBox(
                                        height: 66.v,
                                        width: 275.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImagen20230928112021437,
                                                  height: 66.v,
                                                  width: 62.h,
                                                  radius: BorderRadius.circular(
                                                      31.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgVector1,
                                                  height: 65.v,
                                                  width: 273.h,
                                                  alignment: Alignment.center,
                                                  onTap: () {
                                                    onTapImgVectoroneone(
                                                        context);
                                                  }),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 19.v),
                                                      child: Text(
                                                          "lbl_max_verstappen"
                                                              .tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .titleLarge)))
                                            ])),
                                    SizedBox(height: 2.v)
                                  ]))
                        ]))))));
  }

  /// Navigates to the pilotoVerstapenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the pilotoVerstapenScreen.
  onTapImgVectoroneone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pilotoVerstapenScreen);
  }
}