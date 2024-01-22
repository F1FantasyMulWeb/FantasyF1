import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image_2.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:FantasyF1/widgets/custom_elevated_button.dart';
import 'package:FantasyF1/widgets/custom_outlined_button.dart';
import 'package:FantasyF1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CambiarcontraseA2screenScreen extends StatelessWidget {
  CambiarcontraseA2screenScreen({Key? key}) : super(key: key);

  TextEditingController musicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 39.v),
                  SizedBox(
                      height: 232.v,
                      width: 320.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLogo,
                                          height: 64.v,
                                          width: 280.h),
                                      SizedBox(height: 16.v),
                                      SizedBox(
                                          width: 303.h,
                                          child: Text(
                                              "msg_formula_1_fantasy".tr,
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style:
                                                  theme.textTheme.displayLarge))
                                    ]))),
                        CustomAppBar(
                            height: 40.v,
                            leadingWidth: 60.h,
                            leading: AppbarImage(
                                svgPath: ImageConstant.imgArrowleftPrimary,
                                margin: EdgeInsets.only(left: 20.h),
                                onTap: () {
                                  onTapArrowleftone(context);
                                }),
                            actions: [
                              AppbarImage2(
                                  svgPath: ImageConstant.imgHome,
                                  margin:
                                      EdgeInsets.fromLTRB(20.h, 8.v, 20.h, 7.v),
                                  onTap: () {
                                    onTapHomeone(context);
                                  })
                            ])
                      ])),
                  SizedBox(height: 42.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        decoration:
                                            AppDecoration.outlinePrimary1,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("msg_recupera_tu_cuenta".tr,
                                                  style: theme.textTheme
                                                      .headlineMedium),
                                              Container(
                                                  width: 247.h,
                                                  margin: EdgeInsets.fromLTRB(
                                                      31.h, 10.v, 31.h, 3.v),
                                                  child: Text(
                                                      "msg_introduce_el_c_digo"
                                                          .tr,
                                                      maxLines: 3,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .titleSmall15))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 13.v),
                                        child: Text(
                                            "msg_c_digo_verificaci_n".tr,
                                            style: CustomTextStyles
                                                .titleSmallPoppins)),
                                    CustomTextFormField(
                                        controller: musicController,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 7.v),
                                        hintText: "lbl_466_005".tr,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 14.v, 8.h, 14.v),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgMusic)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.h, top: 7.v),
                                        child: Row(children: [
                                          Text("lbl_tiempo_restante".tr,
                                              style: CustomTextStyles
                                                  .bodyMediumInter),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.h),
                                              child: Text("lbl_0_00".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumInterRed400)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 3.h),
                                              child: Text("lbl_minutos".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumInterRed400))
                                        ])),
                                    CustomElevatedButton(
                                        text: "lbl_siguiente_2_3".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 55.v),
                                        onTap: () {
                                          onTapSiguiente23(context);
                                        }),
                                    CustomOutlinedButton(
                                        height: 40.v,
                                        text: "msg_reenviar_c_digo".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 15.v))
                                  ]))))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginscreenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginscreenScreen.
  onTapHomeone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }

  /// Navigates to the cambiarcontraseA3screenOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cambiarcontraseA3screenOneScreen.
  onTapSiguiente23(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cambiarcontraseA3screenOneScreen);
  }
}
