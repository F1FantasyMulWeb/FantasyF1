import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/custom_elevated_button.dart';
import 'package:fantasyf1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../DataBase/databasecontroller.dart';

class AAdirgrupoScreen extends StatelessWidget {
  AAdirgrupoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController codevalueoneController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  DataBaseController clienteController = DataBaseController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 64.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 31.h,
              top: 11.v,
              bottom: 12.v,
            ),
          ),
          centerTitle: true,
          title: AppbarImage1(
            imagePath: ImageConstant.imgLogo,
          ),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Divider(),
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
                          hintText: "lbl_1234_2222".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMusic,
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
                          hintText: "lbl2".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(16.h, 14.v, 8.h, 14.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgMingcutelockline,
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
                    onTap: () {
                      final b = clienteController.sendDataUsuarioGrupo(
                          codevalueoneController.text, passwordController.text);
                      if (b == true) {
                        _mostrarDialogo(context, "Grupo añadido");
                      } else {
                        _mostrarDialogo(context, "Grupo no añadido");
                      }
                    },
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumWhiteA70001SemiBold,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _mostrarDialogo(BuildContext context, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(mensaje),
          actions: <Widget>[
            TextButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
