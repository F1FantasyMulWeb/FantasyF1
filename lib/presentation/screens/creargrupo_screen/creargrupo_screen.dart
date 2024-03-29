import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image_1.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:FantasyF1/widgets/custom_elevated_button.dart';
import 'package:FantasyF1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../provider/usermodel.dart';

// ignore_for_file: must_be_immutable
class CreargrupoScreen extends ConsumerStatefulWidget {
  CreargrupoScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<CreargrupoScreen> createState() => _CreargrupoScreen();
}

class _CreargrupoScreen extends ConsumerState<CreargrupoScreen> {
  TextEditingController nombreGrupoController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  DataBaseController clienteController = DataBaseController();

  @override
  void dispose() {
    passwordController.dispose();
    nombreGrupoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final userModel = ref.watch(userModelProvider);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 64.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)),
                centerTitle: true,
                title: AppbarImage1(imagePath: ImageConstant.imgLogo)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              height: 91.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            width: 245.h,
                                            child: Text(
                                                "msg_creaci_n_de_grupo".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .displaySmallMedium
                                                    .copyWith(height: 1.04)))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 5.v),
                                            child: SizedBox(
                                                width: double.maxFinite,
                                                child: Divider())))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 13.v, right: 16.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("lbl_nombre_grupo".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnErrorContainer),
                                    SizedBox(height: 6.v),
                                    CustomTextFormField(
                                        obscureText: false,
                                        controller: nombreGrupoController,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 14.v, 30.h, 14.v),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgUser)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 29.v, right: 16.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("msg_establecer_contrase_a".tr,
                                        style: CustomTextStyles
                                            .titleSmallOnErrorContainer),
                                    SizedBox(height: 7.v),
                                    CustomTextFormField(
                                        controller: passwordController,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 14.v, 30.h, 14.v),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgMingcutelockline)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v))
                                  ])),
                          SizedBox(height: 32.v),
                          Text("lbl_imagen_de_grupo".tr,
                              style: CustomTextStyles.titleSmall_1),
                          SizedBox(height: 13.v),
                          CustomImageView(
                              svgPath: ImageConstant.imgUpload,
                              height: 39.adaptSize,
                              width: 39.adaptSize),
                          CustomElevatedButton(
                              height: 44.v,
                              text: "lbl_crear_grupo".tr,
                              margin: EdgeInsets.only(
                                  left: 16.h, top: 35.v, right: 16.h),
                              buttonStyle: CustomButtonStyles.outlinePrimaryTL8,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumWhiteA70001SemiBold,
                              onTap: () async {
                                await mandarDatosGrupo();
                                userModel.cargarGrupos();
                                onTapCreargrupo(context);
                              })
                        ]))))));
  }

  /// Navigates to the listaGruposScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the listaGruposScreen.
  onTapCreargrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.listaGruposScreen);
  }

  Future<void> mandarDatosGrupo() async {
    var uuid = Uuid();
    final idGrupo = uuid.v4();
    await clienteController.sendDataGrupo(
        nombreGrupoController.text, passwordController.text, idGrupo);
    await anadirUsuarioAlGrupoGrado(idGrupo);
  }

  Future<void> anadirUsuarioAlGrupoGrado(var idGrupo) async {
    await clienteController.sendDataAdministradorGrupo(idGrupo);
  }
}
