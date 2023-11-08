import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AAdirgrupoScreen extends StatelessWidget {
  AAdirgrupoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController codevalueoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
            child: SingleChildScrollView(
              child: SizedBox(
                height: 764.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMenu,
                      height: 32.v,
                      width: 33.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 31.h,
                        top: 27.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 26.v),
                        decoration: AppDecoration.outlinePrimary5.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLogo,
                              height: 32.v,
                              width: 157.h,
                            ),
                            SizedBox(height: 10.v),
                            Divider(
                              color: theme.colorScheme.primary.withOpacity(1),
                            ),
                            SizedBox(height: 17.v),
                            Text(
                              "lbl_unirse_a_grupo2".tr,
                              style: CustomTextStyles.displaySmallMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 30.v,
                                right: 16.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_codigo_grupo".tr,
                                    style: CustomTextStyles
                                        .titleSmallPoppinsOnErrorContainer,
                                  ),
                                  SizedBox(height: 6.v),
                                  CustomTextFormField(
                                    controller: codevalueoneController,
                                    hintText: "lbl_466_005".tr,
                                    prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 14.v, 8.h, 14.v),
                                      child: CustomImageView(
                                        svgPath: ImageConstant.imgFileBlue400,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 48.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 16.h,
                                top: 30.v,
                                right: 16.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_contrase_a_acceso".tr,
                                    style: CustomTextStyles
                                        .titleSmallPoppinsOnErrorContainer,
                                  ),
                                  SizedBox(height: 8.v),
                                  CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "lbl3".tr,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    prefix: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          16.h, 14.v, 8.h, 14.v),
                                      child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgMingcutelockline,
                                      ),
                                    ),
                                    prefixConstraints: BoxConstraints(
                                      maxHeight: 48.v,
                                    ),
                                    obscureText: true,
                                  ),
                                ],
                              ),
                            ),
                            CustomElevatedButton(
                              height: 44.v,
                              text: "lbl_siguiente".tr,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                top: 269.v,
                                right: 16.h,
                              ),
                              buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumWhiteA70001SemiBold,
                            ),
                            SizedBox(height: 75.v),
                            SizedBox(
                              width: 72.h,
                              child: Divider(
                                color: appTheme.gray900,
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
        ),
      ),
    );
  }
}
