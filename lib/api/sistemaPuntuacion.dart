import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

void main() {
  final sistema = SistemaPuntuacion();
  sistema.iniciarTemporizador();
}

class SistemaPuntuacion {
  // Función para iniciar el temporizador
  Future<void> iniciarTemporizador() async {
    final fechaGPBarein = new DateTime.utc(2024, 03, 03, 0, 0, 0);
    final fechaGPArabiaSaudi = new DateTime.utc(2024, 03, 17, 0, 0, 0);
    final fechaGPAustralia = new DateTime.utc(2024, 03, 31, 0, 0, 0);
    final fechaGPAzerbaiyan = new DateTime.utc(2024, 04, 28, 0, 0, 0);
    final fechaGPMiami = new DateTime.utc(2024, 05, 05, 0, 0, 0);
    final fechaGPEmiliaRomagna = new DateTime.utc(2024, 05, 19, 0, 0, 0);
    final fechaGPMonaco = new DateTime.utc(2024, 05, 26, 0, 0, 0);
    final fechaGPEspana = new DateTime.utc(2024, 06, 02, 0, 0, 0);
    final fechaGPCanada = new DateTime.utc(2024, 06, 16, 0, 0, 0);
    final fechaGPAustria = new DateTime.utc(2024, 06, 30, 0, 0, 0);
    final fechaGPGranBretana = new DateTime.utc(2024, 07, 07, 0, 0, 0);
    final fechaGPHungria = new DateTime.utc(2024, 07, 21, 0, 0, 0);
    final fechaGPBelgica = new DateTime.utc(2024, 07, 28, 0, 0, 0);
    final fechaPaisesBajos = new DateTime.utc(2024, 08, 25, 0, 0, 0);
    final fechaGPItalia = new DateTime.utc(2024, 09, 01, 0, 0, 0);
    final fechaGPSingapur = new DateTime.utc(2024, 09, 15, 0, 0, 0);
    final fechaGPJapon = new DateTime.utc(2024, 09, 22, 0, 0, 0);
    final fechaGPQatar = new DateTime.utc(2024, 10, 06, 0, 0, 0);
    final fechaGPEstadosUnidos = new DateTime.utc(2024, 10, 20, 0, 0, 0);
    final fechaGPMexico = new DateTime.utc(2024, 10, 27, 0, 0, 0);
    final fechaGPSaoPaulo = new DateTime.utc(2024, 11, 03, 0, 0, 0);
    final fechaGPLasVegas = new DateTime.utc(2024, 11, 17, 0, 0, 0);
    final fechaGPAbuDabi = new DateTime.utc(2024, 11, 26, 0, 0, 0);

    final prefs = await SharedPreferences.getInstance();
    final int indiceUltimoGPEjecutado = prefs.getInt('ultimoGPEjecutado') ?? -1;

    // Encuentra el próximo GP a ejecutar
    int indiceProximoGP = -1;
    final DateTime ahora = DateTime.now();
    final fechasGPs = [
      fechaGPBarein,
      fechaGPArabiaSaudi,
      fechaGPAustralia,
      fechaGPAzerbaiyan,
      fechaGPMiami,
      fechaGPEmiliaRomagna,
      fechaGPMonaco,
      fechaGPEspana,
      fechaGPCanada,
      fechaGPAustria,
      fechaGPGranBretana,
      fechaGPHungria,
      fechaGPBelgica,
      fechaPaisesBajos,
      fechaGPItalia,
      fechaGPSingapur,
      fechaGPJapon,
      fechaGPQatar,
      fechaGPEstadosUnidos,
      fechaGPMexico,
      fechaGPSaoPaulo,
      fechaGPLasVegas,
      fechaGPAbuDabi,
    ];

    for (int i = 0; i < fechasGPs.length; i++) {
      if (fechasGPs[i].isAfter(ahora)) {
        indiceProximoGP = i;
        break;
      }
    }

    if (indiceProximoGP != -1 && indiceProximoGP != indiceUltimoGPEjecutado) {
      // Ejecutar el método específico del próximo GP
      ejecutarMetodoGPEspecifico(indiceProximoGP);

      // Actualizar el índice del último GP ejecutado
      await prefs.setInt('ultimoGPEjecutado', indiceProximoGP);
    } else {
      print(
          'No hay un próximo GP para ejecutar o ya se ejecutó anteriormente.');
    }
    // Comprobar si se debe ejecutar algún GP adicional
    await comprobarEjecucionGP();
  }

// Método para comprobar si debe ejecutarse algún GP adicional
  Future<void> comprobarEjecucionGP() async {
    final prefs = await SharedPreferences.getInstance();
    final int indiceUltimoGPEjecutado = prefs.getInt('ultimoGPEjecutado') ?? -1;

    final DateTime ahora = DateTime.now();
    final fechasGPs = [
      DateTime.utc(2024, 03, 03, 0, 0, 0),
      DateTime.utc(2024, 03, 17, 0, 0, 0),
      DateTime.utc(2024, 03, 31, 0, 0, 0),
      DateTime.utc(2024, 04, 28, 0, 0, 0),
      DateTime.utc(2024, 05, 05, 0, 0, 0),
      DateTime.utc(2024, 05, 19, 0, 0, 0),
      DateTime.utc(2024, 05, 26, 0, 0, 0),
      DateTime.utc(2024, 06, 02, 0, 0, 0),
      DateTime.utc(2024, 06, 16, 0, 0, 0),
      DateTime.utc(2024, 06, 30, 0, 0, 0),
      DateTime.utc(2024, 07, 07, 0, 0, 0),
      DateTime.utc(2024, 07, 21, 0, 0, 0),
      DateTime.utc(2024, 07, 28, 0, 0, 0),
      DateTime.utc(2024, 08, 25, 0, 0, 0),
      DateTime.utc(2024, 09, 01, 0, 0, 0),
      DateTime.utc(2024, 09, 15, 0, 0, 0),
      DateTime.utc(2024, 09, 22, 0, 0, 0),
      DateTime.utc(2024, 10, 06, 0, 0, 0),
      DateTime.utc(2024, 10, 20, 0, 0, 0),
      DateTime.utc(2024, 10, 27, 0, 0, 0),
      DateTime.utc(2024, 11, 03, 0, 0, 0),
      DateTime.utc(2024, 11, 17, 0, 0, 0),
      DateTime.utc(2024, 11, 26, 0, 0, 0), // Fecha de fin
    ];

    // Verificar si la fecha actual está entre el rango de tiempo de algún GP
    for (int i = 0; i < fechasGPs.length - 1; i += 2) {
      if (ahora.isAfter(fechasGPs[i]) && ahora.isBefore(fechasGPs[i + 1])) {
        // Verificar si el método específico del GP no se ha ejecutado
        if (i ~/ 2 != indiceUltimoGPEjecutado) {
          // Ejecutar el método específico del GP
          ejecutarMetodoGPEspecifico(i ~/ 2);
          // Actualizar el índice del último GP ejecutado
          await prefs.setInt('ultimoGPEjecutado', i ~/ 2);
          print('Se ejecutó un GP adicional.');
        } else {
          print('El GP ya se ejecutó anteriormente en este rango de tiempo.');
        }
        return;
      }
    }
    print('No hay GP adicional para ejecutar en este momento.');
  }

  // Métodos específicos para cada GP
  void ejecutarMetodoGPEspecifico(int indiceGP) {
    switch (indiceGP) {
      case 0:
        // Lógica para el GP Barein
        print('Ejecutar lógica para el GP Barein');
        break;
      case 1:
        // Lógica para el GP Arabia Saudita
        print('Ejecutar lógica para el GP Arabia Saudita');
        break;
      // ... (otros casos para diferentes GPs)
    }
  }
}
