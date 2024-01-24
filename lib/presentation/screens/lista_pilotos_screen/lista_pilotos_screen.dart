import 'package:FantasyF1/api/configuracionApi.dart';
import 'package:FantasyF1/api/modelo/DriversModel.dart';
import 'package:FantasyF1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

import '../../../flutter_flow/flutter_flow_model.dart';
import '../../componentes/widgets_app_bard_mv/cont_app_bard2_mv/cont_app_bard2_mv_widget.dart';
import '../../componentes/widgets_menu_lateral/cont_menu_lateral/cont_menu_lateral_widget.dart';
import '../info_pilotos_screen/info_pilotos.dart';
import 'lista_pilotos_model.dart';

class ListaPilotosScreen extends StatefulWidget {
  const ListaPilotosScreen({
    Key? key,String? rutaPagina,})  : this.rutaPagina = rutaPagina ?? 'lista_pilotos_screen',
        super(key: key);

  final String rutaPagina;


  @override
  _ListaPilotosScreen createState() => _ListaPilotosScreen();
}

class _ListaPilotosScreen extends State<ListaPilotosScreen> {
  DriversModel? driversModel;
  List<Driver>? drivers;
  late Lista_pilotos_model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Lista_pilotos_model());
    initializeCarGlobal();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }



  Future<void> initializeCarGlobal() async {
    Client cliente = Client();
    var gl = await cliente.getDrivers("2023");
    setState(() {
      driversModel = gl;
      drivers = driversModel?.mrData.driverTable.drivers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: wrapWithModel(
            model: _model.contAppBard2MvModel,
            updateCallback: () => setState(() {}),
            child: const ContAppBard2MvWidget(),
          ),
        ),
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
        body: drivers == null
            ? const Center(child: CircularProgressIndicator())
            : CustomScrollView(
          slivers: <Widget>[
            const SliverToBoxAdapter(),
            buildDriverList(),
          ],
        ),
      ),
    );
  }


  Widget buildDriverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          Driver driver = drivers![index];
          return buildDriverTile(driver);
        },
        childCount: drivers!.length,
      ),
    );
  }

  Widget buildDriverTile(Driver driver) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: InkWell(
          onTap: () {
            onTapDriver(context, driver);
          },
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              AvifImage.asset(
                ImageConstant.imgDriverAvif(driver.driverId),
                height: 200,
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0, bottom: 19.v),
                  child: Text(
                    driversModel == null
                        ? "".tr
                        : '${driver.givenName}\n${driver.familyName}',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void onTapDriver(BuildContext context, Driver driver) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Info_Pilotos(driver: driver)));
  }
}
