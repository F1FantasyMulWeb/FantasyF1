import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image_1.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

import '../../../DataBase/databasecontroller.dart';
import '../../../provider/grupoactual.dart';

class ListaJugadoresScreen extends ConsumerStatefulWidget {
  const ListaJugadoresScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ListaJugadoresScreen> createState() => _ListaJugadoresScreen();
}

class _ListaJugadoresScreen extends ConsumerState<ListaJugadoresScreen> {
  DataBaseController clienteController = DataBaseController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final grupoActual = ref.watch(grupoActualModelProvider);
    Map<String, Map<String, dynamic>> nombresUsuariosGrupoFinales = grupoActual.infoJugadores;

    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 47.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgClose,
                    margin:
                        EdgeInsets.only(left: 31.h, top: 13.v, bottom: 27.v),
                    onTap: () {
                      onTapCloseone(context);
                    }),
                centerTitle: true,
                title: Container(
                  width: 60.0,
                  height: 30.0,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF6F6F6),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/logoF1F_IconoEncabezado.png',
                      width: 300.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),),
            body: CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: SizedBox(
                    width: mediaQueryData.size.width,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 5.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Divider(),
                        SizedBox(height: 16.v),
                        Text("lbl_clasificaci_n".tr,
                            style: CustomTextStyles.displayMedium40),
                        SizedBox(height: 19.v),
                      ]),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      String jugador = nombresUsuariosGrupoFinales.keys.elementAt(index);
                      // Proporciona un mapa vacío como valor por defecto si el resultado es nulo
                      Map<String, dynamic> infoJugador = nombresUsuariosGrupoFinales[jugador] ?? {};

                      int? puntos = infoJugador["puntos"];
                      String? imagePath = infoJugador["imagen"];

                      return GestureDetector(
                        onTap: () {
                          onTapUserlistitem(context);
                        },
                        child: Container(
                          height: 71.v,
                          width: 328.h,
                          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                          decoration: AppDecoration.fillWhiteA,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20.h, top: 1.v, right: 14.h),
                                  padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 14.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: fs.Svg(ImageConstant.imgVector1),
                                          fit: BoxFit.cover)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.symmetric(vertical: 6.v),
                                          child: Text(jugador, style: theme.textTheme.titleLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 20.h, top: 3.v),
                                          child: Text(puntos?.toString() ?? '0', style: CustomTextStyles.headlineMediumFormula1))
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                  imagePath: imagePath ?? ImageConstant.imgDownload169x169,
                                  height: 51.v,
                                  width: 55.h,
                                  radius: BorderRadius.circular(25.h),
                                  alignment: Alignment.bottomLeft,
                                  margin: EdgeInsets.only(bottom: 6.v))
                            ],
                          ),
                        ),
                      );
                    },
                    childCount: nombresUsuariosGrupoFinales.length,
                  ),
                ),

              ],
            )));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the perfilCarrerasScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the perfilCarrerasScreen.
  onTapUserlistitem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.perfilCarrerasScreen);
  }
}
