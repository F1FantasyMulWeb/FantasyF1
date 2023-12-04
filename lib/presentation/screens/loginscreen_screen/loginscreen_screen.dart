import 'package:fantasyf1/DataBase/databasecontroller.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_outlined_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


import '../../../core/utils/FormValidatorLogin.dart';

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
  late DataBaseController clientController;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    FormValidatorLogin formValidator = FormValidatorLogin(AppLocalization.of());

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
                                                obscureText: false,
                                                validator:
                                                    formValidator.isValidEmail,
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
                                                controller: passwordController,
                                                obscureText: true,
                                                hintText: "lbl2".tr,
                                                validator:
                                                    formValidator.isValidPass,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                prefix: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        16.h, 14.v, 8.h, 14.v),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgMingcutelockline)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        maxHeight: 48.v),
                                              ),
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
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: <Widget>[
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child:
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
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Wrap(
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
                                                                ),
                                                              ],
                                                            )
                                                          ])))
                                            ])),
                                    SizedBox(height: 23.v),
                                    CustomElevatedButton(
                                      text: "lbl_iniciar_sesi_n".tr,
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          _iniciarSesion(context);
                                        }
                                      },
                                    ),
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

  Future<void> _iniciarSesion(BuildContext context) async {
    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      final user = response.user;
      if (user != null) {
        clientController =
            DataBaseController(Supabase.instance.client);
        clientController.downloadAvatarInicio();
        onTapIniciarsesin(context);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('El usuario no existe'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Ha ocurrido un error durante el inicio de sesión.'),
        ),
      );
    }
  }

  onTapTxtOlvidastelacont(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cambiarcontraseA1screenScreen);
  }

  onTapIniciarsesin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainscreensinligasScreen
    );
  }

  onTapTxtNotienesunacuenta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrarsescreenScreen);
  }
}
