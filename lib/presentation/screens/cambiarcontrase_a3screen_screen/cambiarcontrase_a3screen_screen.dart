import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CambiarcontraseA3screenScreen extends StatelessWidget {
  CambiarcontraseA3screenScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

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
                      SizedBox(height: 39.v),
                      SizedBox(
                          height: 232.v,
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
                                  child: Column(children: [
                                    Container(
                                        decoration:
                                            AppDecoration.outlinePrimary1,
                                        child: Column(children: [
                                          Text("msg_cambiar_contrase_a3".tr,
                                              style: CustomTextStyles
                                                  .headlineMedium26),
                                          SizedBox(height: 12.v),
                                          SizedBox(
                                              width: 216.h,
                                              child: Text(
                                                  "msg_introduce_la_nueva".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleSmall15))
                                        ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 9.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_contrase_a".tr,
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              SizedBox(height: 7.v),
                                              CustomTextFormField(
                                                  controller:
                                                      passwordController,
                                                  hintText: "lbl3".tr,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              16.h,
                                                              14.v,
                                                              8.h,
                                                              14.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMingcutelockline)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 48.v),
                                                  obscureText: true)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 1.h, top: 14.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("msg_repetir_contrase_a".tr,
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              SizedBox(height: 6.v),
                                              CustomTextFormField(
                                                  controller:
                                                      passwordController1,
                                                  hintText: "lbl3".tr,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  textInputType: TextInputType
                                                      .visiblePassword,
                                                  prefix: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              16.h,
                                                              14.v,
                                                              8.h,
                                                              14.v),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMingcutelockline)),
                                                  prefixConstraints:
                                                      BoxConstraints(
                                                          maxHeight: 48.v),
                                                  obscureText: true)
                                            ])),
                                    SizedBox(height: 24.v),
                                    CustomElevatedButton(
                                        text: "msg_cambiar_contrase_a4".tr,
                                        onTap: () {
                                          onTapCambiar(context);
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

  /// Navigates to the loginscreenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginscreenScreen.
  onTapCambiar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }
}
