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
        child: Padding(
          padding: EdgeInsets.only(bottom: 5.v),
          child: Column(children: [
            Divider(),
            SizedBox(height: 5.v),

            SizedBox(height: 5.v),
            Text("lbl_grupos".tr, style: theme.textTheme.displayMedium),
            SizedBox(height: 10.v),
            Expanded(
              child: _listaGrupos.isEmpty
                  ? Center(child: Text('Usted no tiene grupos', style: theme.textTheme.displayMedium))
                  : ListView.builder(
                itemCount: _listaGrupos.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
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
                            child: Text(_listaGrupos[index],
                                style: CustomTextStyles.displayGrupos),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ]),
        ),
      ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "btn1",
                  onPressed: () {
                    onTapCrearGrupo(context);
                  },
                  child: Icon(Icons.add), // Ícono del primer botón
                  backgroundColor: Colors.redAccent, // Color de fondo del primer botón
                ),
                SizedBox(
                  height: 10, // Espacio entre los botones
                ),
                FloatingActionButton(
                  heroTag: "btn2",
                  onPressed: () {
                    onTapUnirseGrupo(context);
                  },
                  child: Icon(Icons.remove), // Ícono del segundo botón
                  backgroundColor: Colors.blueAccent, // Color de fondo del segundo botón
                ),
              ],
            )
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
  onTapCrearGrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creargrupoScreen);
  }
  onTapUnirseGrupo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.aAdirgrupoScreen);
  }
}
