import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_2.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_outlined_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../database/auth_service.dart';

// ignore_for_file: must_be_immutable
class ConfirmaUsuarioRegistrado extends ConsumerWidget  {

  ConfirmaUsuarioRegistrado({Key? key}) : super(key: key);

  final TextEditingController _confirmationCodeController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authService = ref.watch(authServiceProvider);
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
                                              Text("[]",
                                                  style: theme.textTheme
                                                      .headlineMedium),
                                              Container(
                                                  width: 247.h,
                                                  margin: EdgeInsets.fromLTRB(
                                                      31.h, 10.v, 31.h, 3.v),
                                                  child: Text(
                                                      authService.handleCodeDelivery(),
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
                                      controller: _confirmationCodeController,
                                      obscureText: false,
                                      margin: EdgeInsets.only(left: 2.h, top: 7.v),
                                      hintText: "lbl_466_005".tr,
                                      textInputAction: TextInputAction.done,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v),
                                          child: CustomImageView(svgPath: ImageConstant.imgMusic)
                                      ),
                                      prefixConstraints: BoxConstraints(maxHeight: 48.v),
                                    )

                                    ,
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
                                        text: "Confirmar".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 55.v),
                                        onTap: () {
                                          onTapSiguiente23(context,ref);
                                        }),
                                    CustomOutlinedButton(
                                        height: 40.v,
                                        text: "msg_reenviar_c_digo".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.h, top: 15.v))
                                  ]))))
                ]))));
  }


  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  onTapHomeone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }


  void onTapSiguiente23(BuildContext context, WidgetRef ref) async {
    final authService = ref.watch(authServiceProvider);
    final value = _confirmationCodeController.text;
    if (value.isNotEmpty) {
      await authService.confirmUser(
        confirmationCode: _confirmationCodeController.text,
      );

    }
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }



}







