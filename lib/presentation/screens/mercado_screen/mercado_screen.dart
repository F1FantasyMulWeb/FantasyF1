import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/provider/grupoactual.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_image.dart';
import 'package:fantasyf1/widgets/app_bar/appbar_title.dart';
import 'package:fantasyf1/widgets/app_bar/custom_app_bar.dart';
import 'package:fantasyf1/widgets/drivercard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../DataBase/databasecontroller.dart';

class MercadoScreen extends ConsumerStatefulWidget {
  const MercadoScreen({Key? key}) : super(key: key);

  ConsumerState<MercadoScreen> createState() => _MercadoScreen();
}

class _MercadoScreen extends ConsumerState<MercadoScreen> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final groupModel = ref.watch(grupoActualModelProvider);

    final listaPilotosGrupos = groupModel.listaPilotosDelGrupo;

    final DataBaseController dataBaseController = DataBaseController();
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
                  separatorBuilder: (context, index) => SizedBox(height: 19.v),
                  itemCount: listaPilotosGrupos.length,
                  itemBuilder: (context, index) {
                    String pilotoId = listaPilotosGrupos.keys.elementAt(index);
                    var pilotoDatos = listaPilotosGrupos[pilotoId];

                    // Verifica si los datos del piloto están disponibles
                    if (pilotoDatos != null && pilotoDatos.length >= 3) {
                      String pilotoNombre = pilotoDatos[0] as String; // El nombre del piloto
                      int precio = pilotoDatos[1] as int; // El precio del piloto
                      int puntos = pilotoDatos[2] as int; // Los puntos del piloto

                      return DriverCard(
                        driverName: pilotoNombre,
                        driverImageAsset: ImageConstant.imgDriverAvif(pilotoId),
                        price: precio,
                        points: puntos,
                        onBuyPressed: () async {
                          await dataBaseController.comprarPiloto(pilotoId, groupModel.codeGrupo, 10);
                          await groupModel.cargarGrupo();
                          setState(() {});
                        },
                      );
                    } else {
                      // Retornar un widget alternativo si los datos del piloto no están disponibles
                      return SizedBox(height: 19.v); // O cualquier otro widget que prefieras
                    }
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
