import 'dart:io';

import 'package:fantasyf1/DataBase/databasecontroller.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../widgets/app_bar/AppBarImageAndSubtitle.dart';
import '../edit_avatar_screen/edit_avatar_screen.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  _AvatarScreenState createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  final client = Supabase.instance.client;
  DataBaseController clienteController =
      DataBaseController(Supabase.instance.client);
  late Future<File> _imageFile;

  @override
  void initState() {
    super.initState();
    inicializarAvatar();
  }

  inicializarAvatar() async {
      _imageFile = clienteController.selectAvatarImage();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          centerTitle: true,
          title: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 31.h,
                ),
                child: Row(
                  children: [
                    AppbarImage1(
                      svgPath: ImageConstant.imgMenu,
                    ),
                    SizedBox(width: 143),
                    Expanded(
                      child: AppBarImageAndSubtitle(
                        svgPath: ImageConstant.imgEdit,
                        text: "lbl_editar_perfil".tr,
                        onTap: () => onTapEditAvatar(context),
                        margin: EdgeInsets.only(
                          right: 24.h,
                          bottom: 2.v,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
            ],
          ),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                right: 13.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  FutureBuilder<File>(
                    future: _imageFile, // Tu método que devuelve Future<File>
                    builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator(); // Muestra un indicador de carga mientras se espera
                      } else {
                        if (snapshot.hasError || !snapshot.data!.existsSync()) {
                          // Si hay un error o el archivo no existe, muestra la imagen predeterminada
                          return CustomImageView(
                            imagePath: ImageConstant.imgDownload169x169,
                            height: 169.adaptSize,
                            width: 169.adaptSize,
                            radius: BorderRadius.circular(
                              84.h,
                            ),
                          );
                        } else {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(84.0),
                            child: Image.file(
                              File(snapshot.data!.path),
                              height: 169.0,
                              width: 169.0,
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                                // Puedes devolver una imagen de error o un widget de error aquí
                                return Icon(Icons.error);
                              },
                            ),
                          );
                        }
                      }
                    },
                  ),
                  SizedBox(height: 37.v),
                  FutureBuilder<String>(
                    future:clienteController.selectUserName(),
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      } else {
                        if (snapshot.hasError)
                          return Text('Error: ${snapshot.error}');
                        else
                          return Text(
                            snapshot.data!,
                            style: CustomTextStyles.displayMediumOnUserName,
                          );
                      }
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 33.v,
                      right: 8.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 106.h,
                          margin: EdgeInsets.only(
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_1er_puesto2".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: SizedBox(
                            height: 126.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.primary.withOpacity(1),
                              endIndent: 2.h,
                            ),
                          ),
                        ),
                        Container(
                          width: 65.h,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_podio2".tr,
                                  style: CustomTextStyles.titleLarge_1,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: SizedBox(
                            height: 126.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                              color: theme.colorScheme.primary.withOpacity(1),
                              indent: 2.h,
                            ),
                          ),
                        ),
                        Container(
                          width: 82.h,
                          margin: EdgeInsets.only(
                            left: 21.h,
                            top: 13.v,
                            bottom: 19.v,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_puntos3".tr,
                                  style: CustomTextStyles.titleLarge_1,
                                ),
                                TextSpan(
                                  text: "\n\n".tr,
                                  style: CustomTextStyles.titleLargeInter,
                                ),
                                TextSpan(
                                  text: "lbl".tr,
                                  style: CustomTextStyles.displayMediumRed400,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  SizedBox(
                    height: 136.v,
                    width: 336.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 134.v,
                            width: 336.h,
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "lbl_logros".tr,
                            style: CustomTextStyles.titleLargeOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void onTapEditAvatar(BuildContext context) async {
    String userName = await clienteController.selectUserName();
    String imagePath;
    try{
      imagePath = (await _imageFile).path;
    } catch (e) {
      imagePath = ImageConstant.imgDownload169x169;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditAvatarScreen(path: imagePath, userName: userName),
      ),
    );
  }
}




