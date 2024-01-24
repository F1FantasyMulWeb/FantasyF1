import 'package:FantasyF1/core/app_export.dart';
import 'package:FantasyF1/provider/grupoactual.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_image.dart';
import 'package:FantasyF1/widgets/app_bar/appbar_title.dart';
import 'package:FantasyF1/widgets/app_bar/custom_app_bar.dart';
import 'package:FantasyF1/widgets/drivercard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../DataBase/databasecontroller.dart';
import '../../../flutter_flow/flutter_flow_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard3_mv/cont_app_bard3_mv_widget.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import 'mercado_pilotos_grupo_model.dart';

class MercadoScreen extends ConsumerStatefulWidget {
  const MercadoScreen({
    Key? key,String? rutaPagina,})  : this.rutaPagina = rutaPagina ?? 'mercadopilotosgrupo',
        super(key: key);

  final String rutaPagina;

  ConsumerState<MercadoScreen> createState() => _MercadoScreen();
}

class _MercadoScreen extends ConsumerState<MercadoScreen> {

  late MercadoPilotosGrupoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MercadoPilotosGrupoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }
  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    final groupModel = ref.watch(grupoActualModelProvider);

    final listaPilotosGrupos = groupModel.listaPilotosDelGrupo;

    final DataBaseController dataBaseController = DataBaseController();
    return SafeArea(
      child: Scaffold(
        drawer: Container(
          width: 300.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.contMenuLateralModel,
              updateCallback: () => setState(() {}),
              child: ContMenuLateralWidget(
                rutaPagina: widget.rutaPagina,
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
        pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: wrapWithModel(
                  model: _model.contMenuLateralModel,
                  updateCallback: () => setState(() {}),
                  child: const ContAppBard3MvWidget(),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Mercado",
                    style:  TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Color(0xCC000000),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
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
                          await dataBaseController.comprarPiloto(pilotoId, groupModel.codeGrupo, precio);
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
