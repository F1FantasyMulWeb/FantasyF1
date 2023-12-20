import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/provider/grupoactual.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_title.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../DataBase/databasecontroller.dart';
import '../../../api/modelo/RaceEventModel.dart';
import '../mercado_screen/widgets/userprofile_item_widget.dart';

class MercadoScreen extends ConsumerStatefulWidget {
  const MercadoScreen({Key? key}) : super(key: key);

  ConsumerState<MercadoScreen> createState() => _MercadoScreen();
}

class _MercadoScreen extends ConsumerState<MercadoScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> pilotosDisponibles = [];
    mediaQueryData = MediaQuery.of(context);
    final groupModel = ref.watch(grupoActualModelProvider);

    Future<RaceEventModel?> initializePilotos() async {
      DataBaseController clienteController = DataBaseController();
      List<String> pilotosDisponiblesAux = await clienteController
          .selectPilotosDisponiblesDelGrupo(groupModel.codeGrupo);
      setState(() {
        pilotosDisponibles = pilotosDisponiblesAux;
      });
    }

    @override
    void initState() {
      initializePilotos();
      super.initState();
    }

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            height: 130.v,
            leadingWidth: 36.h,
            leading: AppbarImage(
                svgPath: ImageConstant.imgClose,
                margin: EdgeInsets.only(left: 20.h, bottom: 50.v),
                onTap: () {
                  onTapCloseone(context);
                }),
            centerTitle: true,
            title: AppbarTitle(text: LocalizationExtension("lbl_mercado2").tr)),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(
                  width: 203.h,
                  child: Text(LocalizationExtension("msg_dinero_disponible").tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge)),

              Container(
                height: 166.v,
                width: 302.h,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                decoration: AppDecoration.fillWhiteA,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [

                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 161.v,
                        width: 302.h,
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(
                            17.h,
                          ),
                        ),
                      ),
                    ),
                    for(var i in pilotosDisponibles)
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 6.h,
                          bottom: 10.v,
                        ), child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.h,
                                vertical: 4.v,
                              ),
                              decoration:
                                  AppDecoration.fillOnPrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    LocalizationExtension("lbl_puntos4").tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  SizedBox(height: 15.v),
                                  Text(
                                    i,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  SizedBox(height: 4.v),
                                ],
                              ),
                            ),

                            Container(
                              margin: EdgeInsets.only(
                                left: 5.h,
                                top: 37.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 7.h,
                                vertical: 10.v,
                              ),
                              decoration: AppDecoration.fillRed.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder19,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  Text(
                                    LocalizationExtension("lbl_comprar").tr,
                                    style: CustomTextStyles
                                        .titleSmallRobotoGray20001,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 37.h,
                          bottom: 10.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 4.v,
                        ),
                        decoration:
                            AppDecoration.fillOnPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              LocalizationExtension("lbl_precio").tr,
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 15.v),
                            Text(
                              LocalizationExtension("lbl_m").tr,
                              style: theme.textTheme.titleLarge,
                            ),
                            SizedBox(height: 4.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          right: 5.h,
                          bottom: 54.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.h,
                          vertical: 11.v,
                        ),
                        decoration: AppDecoration.fillRed.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder19,
                        ),
                        child: Text(
                          LocalizationExtension("lbl_info").tr,
                          style: CustomTextStyles.titleSmallRobotoGray20001,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img_max_verstappen_body,
                      height: 66.v,
                      width: 62.h,
                      radius: BorderRadius.circular(
                        31.h,
                      ),
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 1.h,
                        top: 11.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 15.h,
                          right: 13.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 105.h,
                          vertical: 24.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgVector1,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 82.v),
                            Text(
                              LocalizationExtension("lbl").tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapCloseone(BuildContext context) {
    Navigator.pop(context);
  }
}
