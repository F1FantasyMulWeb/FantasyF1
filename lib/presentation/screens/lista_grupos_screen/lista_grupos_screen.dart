import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../api/configuracionApi.dart';

class ListaGruposScreen extends StatefulWidget {
  const ListaGruposScreen({Key? key}) : super(key: key);

  @override
  _ListaGruposScreen createState() => _ListaGruposScreen();
}

class _ListaGruposScreen extends State<ListaGruposScreen> {
  DataBaseController clienteController =
      DataBaseController(Supabase.instance.client);
  List<String>? _listaGrupos;

  @override
  void initState() {
    initializeCarGlobal();
    super.initState();
    print(_listaGrupos);
  }

  void initializeCarGlobal() async {
    List<dynamic> gl = await clienteController.selectGrupoName();
    setState(() {
      _listaGrupos = gl.cast<String>();
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
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
                          Divider(),
                          SizedBox(height: 16.v),
                          Text("lbl_grupos".tr,
                              style: theme.textTheme.displayMedium),
                          SizedBox(height: 10.v),
                          for (int i = 0; i < 6; i++)
                            GestureDetector(
                                onTap: () {
                                  onTapUserlistitem(context);
                                },
                                child: Container(
                                    height: 71.v,
                                    width: 328.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.h, vertical: 2.v),
                                    decoration: AppDecoration.fillWhiteA,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 20.h, right: 14.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 126.h,
                                                      vertical: 19.v),
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: fs.Svg(
                                                              ImageConstant
                                                                  .imgVector1),
                                                          fit: BoxFit.cover)),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        SizedBox(height: 2.v),
                                                        Text("lbl".tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge)
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgDownload1,
                                              height: 51.v,
                                              width: 55.h,
                                              radius:
                                                  BorderRadius.circular(25.h),
                                              alignment: Alignment.bottomLeft,
                                              margin:
                                                  EdgeInsets.only(bottom: 6.v))
                                        ]))),
                          SizedBox(height: 438.v),
                          CustomImageView(
                              svgPath: ImageConstant.imgBoton,
                              height: 57.v,
                              width: 65.h)
                        ]))))));
  }

  /// Navigates to the grupoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the grupoScreen.
  onTapUserlistitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.grupoScreen);
  }
}
