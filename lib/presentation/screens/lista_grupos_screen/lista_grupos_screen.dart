import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../provider/usermodel.dart';

class ListaGruposScreen extends ConsumerStatefulWidget {
  const ListaGruposScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ListaGruposScreen> createState() => _ListaGruposScreen();
}

class _ListaGruposScreen extends ConsumerState<ListaGruposScreen> {
  DataBaseController clienteController = DataBaseController();

  List<String> nombresGrupoFinales = [];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final userModel = ref.watch(userModelProvider);
    final _listaGrupos = userModel.listaGrupos;
    nombresGrupoFinales = sacarLosNombresDeGrupo(_listaGrupos);
    print(_listaGrupos);
    return SafeArea(
        child: Scaffold(
      appBar: CustomAppBar(
          leadingWidth: 64.h,
          leading: AppbarImage(
              svgPath: ImageConstant.imgMenu,
              margin: EdgeInsets.only(left: 31.h, top: 11.v, bottom: 12.v)),
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
              Text("lbl_grupos".tr, style: theme.textTheme.displayMedium),
              SizedBox(height: 10.v),
              for (var i in nombresGrupoFinales)
                GestureDetector(
                  onTap: () {
                    onTapUserlistitem(context);
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgDownload1,
                            height: 51.v,
                            width: 55.h,
                            radius: BorderRadius.circular(25.h),
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 6.v)),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(i, style: CustomTextStyles.displayGrupos),
                        ),
                      ),
                    ],
                  ),
                ),
            ]),
          ),
        ),
      ),
    ));
  }

  /// Navigates to the grupoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the grupoScreen.
  onTapUserlistitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.grupoScreen);
  }

  List<String> sacarLosNombresDeGrupo(List listaGrupos) {
    List<String> nombresGrupo = [];
    int i;
    String nombre;
    for (i = 0; i < listaGrupos.length; i++) {
      nombre = listaGrupos[i].toString();
      nombresGrupo.add(nombre.substring(13, nombre.length - 1));
    }
    return nombresGrupo;
  }
}
