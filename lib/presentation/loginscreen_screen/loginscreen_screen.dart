import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_outlined_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../verificacion/FormValidator.dart';


// ignore_for_file: must_be_immutable
class LoginscreenScreen extends StatefulWidget {
  LoginscreenScreen({Key? key}) : super(key: key);

  @override
  _LoginscreenScreenState createState() => _LoginscreenScreenState();
}

class _LoginscreenScreenState extends State<LoginscreenScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    FormValidator formValidator = FormValidator();
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 69.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 82.v),
                                  child: Column(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgLogo,
                                        height: 64.v,
                                        width: 280.h),
                                    SizedBox(height: 16.v),
                                    SizedBox(
                                        height: 174.v,
                                        width: 303.h,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  child: SizedBox(
                                                      width: 303.h,
                                                      child: Text(
                                                          "msg_formula_1_fantasy"
                                                              .tr,
                                                          maxLines: 3,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.center,
                                                          style: theme.textTheme
                                                              .displayLarge))),
                                              Align(
                                                  alignment:
                                                  Alignment.bottomCenter,
                                                  child: SizedBox(
                                                      width: 266.h,
                                                      child: Text(
                                                          "msg_por_favor_rellene"
                                                              .tr,
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.center,
                                                          style: CustomTextStyles
                                                              .titleLargeInter_1)))
                                            ])),
                                    SizedBox(height: 17.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.h, vertical: 2.v),
                                        decoration:
                                        AppDecoration.outlinePrimary1,
                                        child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Text("msg_correo_electr_nico".tr,
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              SizedBox(height: 7.v),
                                              CustomTextFormField(
                                                controller: emailController,
                                                validator: formValidator.isValidEmail,
                                                hintText:
                                                "msg_ejemplo_ejemplo_com"
                                                    .tr,
                                                textInputType:
                                                TextInputType.emailAddress,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        16.h, 14.v, 8.h, 14.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEmail)),
                                                prefixConstraints:
                                                BoxConstraints(
                                                    maxHeight: 48.v),
                                              ),
                                              SizedBox(height: 10.v),
                                              Text("lbl_contrase_a".tr,
                                                  style: theme
                                                      .textTheme.titleSmall),
                                              SizedBox(height: 7.v),
                                              CustomTextFormField(
                                                  controller:
                                                  passwordController,
                                                  hintText: "lbl2".tr,
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
                                                  obscureText: true),
                                              SizedBox(height: 14.v)
                                            ])),
                                    SizedBox(height: 14.v),
                                    SizedBox(
                                        height: 26.v,
                                        width: 311.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 24.v,
                                                      width: 311.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .whiteA700))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: SizedBox(
                                                      height: 26.v,
                                                      width: 311.h,
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                    1.v),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                    vertical:
                                                                    2.v),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtOlvidastelacont(
                                                                            context);
                                                                      },
                                                                      child:
                                                                      Padding(
                                                                        padding:
                                                                        EdgeInsets.only(top: 2.v),
                                                                        child: Text(
                                                                            "msg_olvidaste_la_contrase_a"
                                                                                .tr,
                                                                            style:
                                                                            CustomTextStyles.titleSmallRed400),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Flexible(
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                                  children: <Widget>[
                                                                    Checkbox(
                                                                      value:
                                                                      _isChecked,
                                                                      onChanged:
                                                                          (bool?
                                                                      value) {
                                                                        if (value !=
                                                                            null) {
                                                                          setState(
                                                                                  () {
                                                                                _isChecked =
                                                                                    value;
                                                                              });
                                                                        }
                                                                      },
                                                                    ),
                                                                    Wrap(
                                                                      alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                      children: <Widget>[
                                                                        Text(
                                                                          "msg_mantener_la_sesion"
                                                                              .tr,
                                                                          maxLines:
                                                                          2,
                                                                          overflow:
                                                                          TextOverflow.ellipsis,
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ])))
                                            ])),
                                    SizedBox(height: 23.v),
                                    CustomElevatedButton(
                                        text: "lbl_iniciar_sesi_n".tr,
                                        onTap: () {
                                          bool datosValidos =
                                          comprobarDatosLogin();
                                          // Si los datos son válidos, navega a la siguiente pantalla
                                          if (datosValidos) {
                                            onTapIniciarsesin(context);
                                          }
                                        }),
                                    SizedBox(height: 15.v),
                                    CustomOutlinedButton(
                                        text: "msg_iniciar_sesi_n_con".tr,
                                        leftIcon: Container(
                                            margin: EdgeInsets.only(right: 8.h),
                                            child: CustomImageView(
                                                svgPath:
                                                ImageConstant.imgGoogle))),
                                    SizedBox(height: 23.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtNotienesunacuenta(context);
                                        },
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                  "msg_no_tienes_una_cuenta2"
                                                      .tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumInter15),
                                              TextSpan(text: " "),
                                              TextSpan(
                                                  text: "lbl_registrate".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallRed40015)
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))))
                    ])))));
  }

  onTapTxtOlvidastelacont(BuildContextcontext) {
    Navigator.pushNamed(context, AppRoutes.cambiarcontraseA1screenScreen);
  }

  bool comprobarDatosLogin() {
    String email= emailController.text;
    String password = passwordController.text;
    // Comprueba que el email no esté vacío
    if (email.isEmpty) {
      return false;
    }

    // Comprueba que el formato del email sea correcto
    if (!RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+$').hasMatch(email)) {
      return false;
    }

    // Comprueba que la contraseña no esté vacía
    if (password.isEmpty) {
      return false;
    }

    // Comprueba el valor de la variable _isChecked
    if (_isChecked) {
      // Los datos son válidos
      return true;
    } else {
      // Los datos no son válidos
      return false;
    }
  }


  onTapIniciarsesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainscreensinligasScreen);
  }

  onTapTxtNotienesunacuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrarsescreenScreen);
  }
}
