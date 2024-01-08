import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/provider/grupoactual.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_title.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/drivercard.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../../DataBase/databasecontroller.dart';
import '../../../api/configuracionApi.dart';
import '../../../api/modelo/RaceEventModel.dart';
import '../mercado_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

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
    Client cliente = Client();

    final listaPilotosGrupos = groupModel.listaPilotosDelGrupo;
    print("Hola gente");
    print(listaPilotosGrupos);
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.only(left: 13.h, top: 7.v),
              sliver: SliverFillRemaining(
                hasScrollBody: true, // Cambiado a true
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  // shrinkWrap: true, // Removido
                  separatorBuilder: (context, index) => SizedBox(height: 19.v),
                  itemCount: listaPilotosGrupos.length,
                  itemBuilder: (context, index) {
                    String piloto = listaPilotosGrupos[index];
                    return DriverCard(
                      driverName: piloto,
                      driverImageAsset: ImageConstant.imgDriverAvif(piloto),
                      price: 10,
                      points: 100,
                      onInfoPressed: await cliente.getDriver(piloto),
                    );
                    //return  UserprofileItemWidget(idDriver: piloto);
                  },
                ),
              ),
            ),
          ],
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
