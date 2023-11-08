import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ListaEscuderAsScreen extends StatelessWidget {
  const ListaEscuderAsScreen({Key? key}) : super(key: key);

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
                          Text("lbl_escuderias".tr,
                              style: theme.textTheme.displayMedium),
                          SizedBox(height: 14.v),
                          GestureDetector(
                              onTap: () {
                                onTapRedbull(context);
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
                                            imagePath: ImageConstant
                                                .imgImagen20230928115059716,
                                            height: 43.v,
                                            width: 72.h,
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.only(left: 1.h)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                margin:
                                                    EdgeInsets.only(right: 3.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 24.h,
                                                    vertical: 11.v),
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: fs.Svg(
                                                            ImageConstant
                                                                .imgVector1),
                                                        fit: BoxFit.cover)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(height: 4.v),
                                                      Text("lbl_red_bull".tr,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: theme.textTheme
                                                              .headlineLarge)
                                                    ])))
                                      ])))
                        ]))))));
  }

  /// Navigates to the escuderiaRedBullScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the escuderiaRedBullScreen.
  onTapRedbull(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.escuderiaRedBullScreen);
  }
}
