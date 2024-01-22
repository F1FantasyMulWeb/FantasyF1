import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:FantasyF1/widgets/custom_elevated_button.dart';
import 'package:FantasyF1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CambiarcontraseA1screenScreen extends StatelessWidget {
  CambiarcontraseA1screenScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      SizedBox(
                          height: 233.v,
                          width: 312.h,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 8.h),
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.displayLarge))
                                        ]))),
                            CustomAppBar(
                                height: 40.v,
                                leadingWidth: double.maxFinite,
                                leading: AppbarImage(
                                    svgPath: ImageConstant.imgArrowleftPrimary,
                                    margin: EdgeInsets.only(
                                        left: 20.h, right: 300.h),
                                    onTap: () {
                                      onTapArrowleftone(context);
                                    }))
                          ])),
                      SizedBox(height: 42.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            decoration:
                                                AppDecoration.outlinePrimary1,
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                      "msg_recupera_tu_cuenta"
                                                          .tr,
                                                      style: theme.textTheme
                                                          .headlineMedium),
                                                  Container(
                                                      width: 220.h,
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              45.h,
                                                              10.v,
                                                              44.h,
                                                              3.v),
                                                      child: Text(
                                                          "msg_introduce_el_correo"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: CustomTextStyles
                                                              .titleSmall15))
                                                ])),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 16.v),
                                            child: Text(
                                                "msg_correo_electr_nico".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                            controller: emailController,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 7.v),
                                            hintText:
                                                "msg_ejemplo_ejemplo_com".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    16.h, 14.v, 8.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgEmail)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight: 48.v)),
                                        CustomElevatedButton(
                                            text: "lbl_siguiente_1_3".tr,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 103.v),
                                            onTap: () {
                                              onTapSiguiente13(context);
                                            })
                                      ]))))
                    ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the cambiarcontraseA2screenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the cambiarcontraseA2screenScreen.
  onTapSiguiente13(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cambiarcontraseA2screenScreen);
  }
}
