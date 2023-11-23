import 'package:fantasyf1/core/app_export.dart';
import 'package:fantasyf1/presentation/screens/loginscreen_screen/loginscreen_screen.dart';
import 'package:flutter/material.dart';

import '../../../api/configuracionApi.dart';
import '../../../api/listaCircuitos.dart';
import '../../../api/listaEscuderias.dart';
import '../../../api/listaPilotos.dart';
import '../../../api/manejoDeLaInformcion.dart';
import '../../../widgets/loadingScreen.dart';
import '../checo_perez_screen/checo_perez_screen.dart';
import '../circuito_bahr_in_screen/circuito_bahr_in_screen.dart';
import '../circuito_de_albert_park_screen/circuito_de_albert_park_screen.dart';
import '../circuito_de_la_corniche_de_yeda_screen/circuito_de_la_corniche_de_yeda_screen.dart';
import '../el_nano_screen/el_nano_screen.dart';
import '../escuderia_aston_martin_screen/escuderia_aston_martin_screen.dart';
import '../escuderia_mercedes_screen/escuderia_mercedes_screen.dart';
import '../escuderia_red_bull_screen/escuderia_red_bull_screen.dart';
import '../piloto_verstapen_screen/piloto_verstapen_screen.dart';

class PantallaCarga extends StatefulWidget {
  @override
  _PantallaCarga createState() => _PantallaCarga();
}

class _PantallaCarga extends State<PantallaCarga> {
  late Future<void> _future;

  @override
  void initState() {
    super.initState();
    _future = _initOperation();
  }

  Future<void> _initOperation() async {
    Client cliente = Client();
    ListaPilotos? lpGlobal;
    ListaCircuitos? lcGlobal;
    ListaEscuderias? leGlobal;

    Future<ListaPilotos?> obtenerInfoPilotos() async {
      return cliente.rellenaListaPilotos();
    }

    Future<ListaCircuitos?> obtenerInfoCircuito() async {
      return cliente.rellenaListaCircuito();
    }

    Future<ListaEscuderias?> obtenerInfoEscuderia() async {
      return cliente.rellenaListaEscuderia();
    }

    // Realiza las operaciones asíncronas en paralelo
    lpGlobal = await obtenerInfoPilotos();
    lcGlobal = await obtenerInfoCircuito();
    leGlobal = await obtenerInfoEscuderia();


    ManejoDeLaInformcion mli = ManejoDeLaInformcion();

    if (lpGlobal != null && lcGlobal != null && leGlobal != null) {
      mli.setListaPilotos(lpGlobal);
      mli.setListaCircuitos(lcGlobal);
      mli.setListaEscuderias(leGlobal);

      PilotoVerstapenScreen pvs = PilotoVerstapenScreen();
      ElNanoScreen ens = ElNanoScreen();
      ChecoPerezScreen cps = ChecoPerezScreen();
      CircuitoBahrInScreen cbis = CircuitoBahrInScreen();
      CircuitoDeLaCornicheDeYedaScreen cdcys = CircuitoDeLaCornicheDeYedaScreen();
      CircuitoDeAlbertParkScreen cdaps = CircuitoDeAlbertParkScreen();
      EscuderiaRedBullScreen erbs = EscuderiaRedBullScreen();
      EscuderiaAstonMartinScreen eas = EscuderiaAstonMartinScreen();
      EscuderiaMercedesScreen ems = EscuderiaMercedesScreen();

      pvs.setManejoDeLaInformcion(mli);
      ens.setManejoDeLaInformcion(mli);
      cps.setManejoDeLaInformcion(mli);
      cbis.setManejoDeLaInformcion(mli);
      cdcys.setManejoDeLaInformcion(mli);
      cdaps.setManejoDeLaInformcion(mli);
      erbs.setManejoDeLaInformcion(mli);
      eas.setManejoDeLaInformcion(mli);
      ems.setManejoDeLaInformcion(mli);

      print("Se ha terminado de rellenar las listas");


    } else {
      print("Error al obtener los datos");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _future,
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginscreenScreen();
        } else if (snapshot.hasError) {
          // Muestra un mensaje de error si ocurre un error
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          // Muestra la pantalla de carga mientras se espera o está en progreso
          return LoadingScreen();
        }
      },
    );
  }

}
