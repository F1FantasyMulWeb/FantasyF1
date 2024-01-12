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
                      onBuyPressed: () async {
                        await dataBaseController.comprarPiloto(piloto, groupModel.codeGrupo, 10);
                        await groupModel.cargarGrupo();
                        setState(() {

                        });
                      },
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
