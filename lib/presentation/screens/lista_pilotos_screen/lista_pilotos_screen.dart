import 'package:fantasyf1/api/configuracionApi.dart';
import 'package:fantasyf1/api/modelo/DriversModel.dart';
import 'package:fantasyf1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_avif/flutter_avif.dart';

class ListaPilotosScreen extends StatefulWidget {
  const ListaPilotosScreen({Key? key}) : super(key: key);

  @override
  _ListaPilotosScreen createState() => _ListaPilotosScreen();
}

class _ListaPilotosScreen extends State<ListaPilotosScreen> {
  DriversModel? driversModel;
  List<Driver>? drivers;

  @override
  void initState() {
    super.initState();
    initializeCarGlobal();
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
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        drawer: const Drawer(), // Drawer setup
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
    );
  }

  void onTapDriver(BuildContext context, Driver driver) {
    // Navegación a detalles del piloto
  }
}
