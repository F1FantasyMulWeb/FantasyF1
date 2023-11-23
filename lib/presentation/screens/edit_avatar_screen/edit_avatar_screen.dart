import 'dart:io';

import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../DataBase/databasecontroller.dart';

class EditAvatarScreen extends StatefulWidget {
  final String path;
  final String userName;

  const EditAvatarScreen({Key? key, required this.path, required this.userName})
      : super(key: key);

  @override
  _EditAvatarScreen createState() => _EditAvatarScreen();
}

class _EditAvatarScreen extends State<EditAvatarScreen> {
  Future<void>? _uploadFuture;
  DataBaseController clienteController =
      DataBaseController(Supabase.instance.client);
  File? _selectedImage;
  final ValueNotifier<File?> imageNotifier = ValueNotifier<File?>(null);


  void updateImage(File newImage) {
    _selectedImage = newImage;
    imageNotifier.value = _selectedImage;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Column(
            children: [
              AppbarImage1(
                svgPath: ImageConstant.imgMenu,
                margin: EdgeInsets.only(
                  left: 31.h,
                  right: 10.h,
                ),
              ),
            ],
          ),
          actions: [
            Transform.translate(
              offset: Offset(-25.0, 0.0),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: ValueListenableBuilder(
                  valueListenable: imageNotifier,
                  builder: (BuildContext context, File? image, Widget? child) {
                    bool isEnabled = image != null;
                    return InkWell(
                      onTap: isEnabled ? () {
                        setState(() {
                          _uploadFuture = clienteController.uploadAvatar(image.path);
                        });
                      } : null,
                      child: FutureBuilder<void>(
                        future: _uploadFuture,
                        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator();  // Muestra un indicador de progreso mientras se está cargando
                          } else {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: isEnabled ? Colors.red : Colors.red[100],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Guardar',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
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
                  GestureDetector(
                    onTap: () async {
                      File? image = await showDialogAndGetImage(context);
                      if (image != null) {
                        //clienteController.uploadAvatar(image.path);
                        setState(() {
                          _selectedImage = image;
                          updateImage(image);
                        });
                      }
                    },
                    child: CustomImageView(
                      imagePath: _selectedImage?.path ??
                          widget.path,
                      height: 169.adaptSize,
                      width: 169.adaptSize,
                      radius: BorderRadius.circular(
                        84.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 37.v),
                  Text(
                    widget.userName,
                    style: CustomTextStyles.displayMediumOnPrimaryUserName,
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
}

Future<File?> showDialogAndGetImage(BuildContext context) async {
  File? _selectedImage;
  return showDialog<File>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Elige una opción'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Cambiar imagen"),
                onTap: () async {
                  final ImagePicker _picker = ImagePicker();
                  final XFile? image =
                      await _picker.pickImage(source: ImageSource.gallery);
                  if (image != null) {
                    _selectedImage = File(image.path);
                  } else {
                    // El usuario canceló la selección de la imagen.
                  }
                  Navigator.of(context).pop(_selectedImage);
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("Cancelar"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
