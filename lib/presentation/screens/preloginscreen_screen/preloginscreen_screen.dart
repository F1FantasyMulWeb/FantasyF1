import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PreloginscreenScreen extends StatelessWidget {
  const PreloginscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.whiteA70001,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA70001,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup177),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 71.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 9.h, right: 9.h, bottom: 485.v),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14.h, vertical: 18.v),
                                  decoration: AppDecoration.outlinePrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder28),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 223.h,
                                            margin: EdgeInsets.only(
                                                left: 44.h, right: 43.h),
                                            child: Text(
                                                "msg_bienvenido_a_formula".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .headlineSmallInter)),
                                        Container(
                                            width: 265.h,
                                            margin: EdgeInsets.only(
                                                left: 23.h,
                                                top: 2.v,
                                                right: 23.h),
                                            child: Text(
                                                "msg_prep_rate_para_vivir".tr,
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .bodyMediumInter_1
                                                    .copyWith(height: 1.43))),
                                        SizedBox(height: 8.v),
                                        CustomElevatedButton(
                                            text: "lbl_vamos_all".tr,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumWhiteA70001,
                                            onTap: () {
                                              onTapVamosall(context);
                                            })
                                      ]))))
                    ])))));
  }

  /// Navigates to the loginscreenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginscreenScreen.
  onTapVamosall(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }
}