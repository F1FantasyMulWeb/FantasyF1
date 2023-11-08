import 'dart:convert';
import 'package:fantasyf1/DataBase/DataBaseControler.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/core/utils/FormValidatorRegister.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_outlined_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:fantasyf1/api/configuracionApi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../localization/es_es/es_es_translations_class_spf.dart';
import '../../../widgets/CheckboxCustom.dart';

// ignore_for_file: must_be_immutable
class RegistrarsescreenScreen extends StatefulWidget {
  RegistrarsescreenScreen({Key? key}) : super(key: key);

  @override
  _RegistrarsescreenScreen createState() => _RegistrarsescreenScreen();
}

class _RegistrarsescreenScreen extends State<RegistrarsescreenScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController usernameoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    Client cliente = Client();
    Map<String, String>? redBull;
    cliente.DataRedBull().whenComplete(() => (redBull = cliente.DataRedBull() as Map<String, String>?));
    print(redBull);
  }


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    es_es_translations_class_spf customTranslations =
    es_es_translations_class_spf();
    FormValidatorRegister formValidator =
    FormValidatorRegister(customTranslations);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 42.v),
                      SizedBox(
                          height: 91.v,
                          width: 320.h,
                          child:
                          Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 20.h),
                                    decoration: AppDecoration.outlinePrimary1,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 1.v),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgLogo,
                                              height: 64.v,
                                              width: 280.h)
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
                      SizedBox(height: 41.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(left: 1.h),
                                            child: Text(
                                                "msg_correo_electr_nico".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                            controller: emailController,
                                            validator:
                                            formValidator.isValidEmail,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 7.v),
                                            hintText:
                                            "msg_ejemplo_ejemplo_com".tr,
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
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 13.v),
                                            child: Text(
                                                "msg_nombre_de_fusuario".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                            controller: usernameoneController,
                                            validator:
                                            formValidator.isValidUsuario,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 7.v),
                                            hintText: "lbl_f1fantasylover".tr,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    16.h, 14.v, 8.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath:
                                                    ImageConstant.imgUser)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight: 48.v)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 13.v),
                                            child: Text("lbl_contrase_a".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                          controller: passwordController,
                                          validator: formValidator.isValidPass,
                                          margin: EdgeInsets.only(
                                              left: 1.h, top: 7.v),
                                          hintText: "lbl2".tr,
                                          textInputType:
                                          TextInputType.visiblePassword,
                                          prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 14.v, 8.h, 14.v),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgMingcutelockline),
                                          ),
                                          prefixConstraints:
                                          BoxConstraints(maxHeight: 48.v),
                                          obscureText: true,
                                        ),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 1.h, top: 14.v),
                                            child: Text(
                                                "msg_repetir_contrase_a".tr,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                            controller: passwordController1,
                                            validator: (text) {
                                              return formValidator
                                                  .isValidRepeatedPassword(text,
                                                  passwordController.text);
                                            },
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 6.v),
                                            hintText: "lbl2".tr,
                                            textInputAction:
                                            TextInputAction.done,
                                            textInputType:
                                            TextInputType.visiblePassword,
                                            prefix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    16.h, 14.v, 8.h, 14.v),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMingcutelockline)),
                                            prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v),
                                            obscureText: true),
                                        SizedBox(height: 28.v),
                                        SizedBox(
                                            height: 22.v,
                                            width: 311.h,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 22.v,
                                                      width: 311.h,
                                                      child: Stack(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Flexible(
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: <
                                                                    Widget>[
                                                                  CheckboxCustom(
                                                                    initialValue:
                                                                    _isChecked,
                                                                    onSaved: (
                                                                        bool?
                                                                        value) =>
                                                                    _isChecked =
                                                                        value ??
                                                                            false,
                                                                    validator:
                                                                        (bool?
                                                                    value) {
                                                                      if (value ==
                                                                          true) {
                                                                        return null;
                                                                      } else {
                                                                        return '';
                                                                      }
                                                                    },
                                                                  ),
                                                                  Wrap(
                                                                    alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                    children: <
                                                                        Widget>[
                                                                      Text(
                                                                        "lbl_acepto_la"
                                                                            .tr,
                                                                        maxLines:
                                                                        2,
                                                                        overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                        style: theme
                                                                            .textTheme
                                                                            .labelLarge,
                                                                      ),
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          // Aquí puedes manejar el evento de pulsación, por ejemplo, abrir una nueva página web.
                                                                        },
                                                                        child:
                                                                        Text(
                                                                          'msg_pol_tica_de_privacidad'
                                                                              .tr,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge
                                                                              ?.copyWith(
                                                                              color: Colors
                                                                                  .red),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ])),
                                        CustomElevatedButton(
                                          text: "lbl_registrarse".tr,
                                          margin: EdgeInsets.only(
                                              left: 1.h, top: 24.v),
                                          onTap: () {
                                            if (_formKey.currentState!
                                                .validate()) {
                                              sendData(
                                                  emailController.text,
                                                  passwordController.text,
                                                  usernameoneController.text);
                                              onTapRegistrarse(context);
                                            }
                                          },
                                        ),
                                        CustomOutlinedButton(
                                            text: "msg_registrarse_con".tr,
                                            margin: EdgeInsets.only(
                                                left: 1.h, top: 15.v),
                                            leftIcon: Container(
                                                margin:
                                                EdgeInsets.only(right: 8.h),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGoogle)))
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
  onTapRegistrarse(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginscreenScreen);
  }
}
