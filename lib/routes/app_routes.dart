import 'package:flutter/material.dart';

import '../presentation/screens/campeonatos_screen/campeonatos_widget.dart';
import '../presentation/screens/mainscreensinligas_screen/main_widget.dart';
import '../presentation/screens/s01_bienvenida/s01_1_bienvenida/s01_1_bienvenida_widget.dart';

import '../presentation/screens/ajustes_one_screen/ajustes_one_screen.dart';
import '../presentation/screens/ajustes_screen/ajustes_screen.dart';
import '../presentation/screens/anadir_grupo_screen/s53_pantalla_unirse_grupo_widget.dart';
import '../presentation/screens/avatar_screen/avatar_screen.dart';
import '../presentation/screens/bak_city_circuit_screen/bak_city_circuit_screen.dart';
import '../presentation/screens/cambiarcontrase_a1screen_screen/cambiarcontrase_a1screen_screen.dart';
import '../presentation/screens/cambiarcontrase_a2screen_screen/cambiarcontrase_a2screen_screen.dart';
import '../presentation/screens/cambiarcontrase_a3screen_one_screen/cambiarcontrase_a3screen_one_screen.dart';
import '../presentation/screens/cambiarcontrase_a3screen_screen/cambiarcontrase_a3screen_screen.dart';
import '../presentation/screens/creargrupo_screen/s54_pantalla_crear_grupo_widget.dart';
import '../presentation/screens/edit_avatar_screen/edit_avatar_screen.dart';
import '../presentation/screens/el_nano_screen/el_nano_screen.dart';
import '../presentation/screens/escuderia_aston_martin_screen/escuderia_aston_martin_screen.dart';
import '../presentation/screens/escuderia_mercedes_screen/escuderia_mercedes_screen.dart';
import '../presentation/screens/escuderia_red_bull_screen/escuderia_red_bull_screen.dart';
import '../presentation/screens/grupo_screen/pantalla_interna_grupo_widget.dart';
import '../presentation/screens/info_pilotos_screen/info_pilotos.dart';
import '../presentation/screens/informaci_n_screen/informaci_n_screen.dart';
import '../presentation/screens/lista_circuitos_screen/lista_circuitos_screen.dart';
import '../presentation/screens/lista_escuder_as_screen/lista_escuder_as_screen.dart';
import '../presentation/screens/lista_grupos_screen/s51_pantalla_listado_grupos_widget.dart';
import '../presentation/screens/lista_jugadores_screen/lista_jugadores_screen.dart';
import '../presentation/screens/lista_pilotos_screen/lista_pilotos_screen.dart';
import '../presentation/screens/loginscreen_screen/s21_login_registrarse_widget.dart';
import '../presentation/screens/mercado_screen/mercado_screen.dart';
import '../presentation/screens/perfil_carreras_screen/perfil_carreras_screen.dart';
import '../presentation/screens/piloto_verstapen_screen/piloto_verstapen_screen.dart';
import '../presentation/screens/tuspilotos_screen/tuspilotos_screen.dart';

class AppRoutes {
  static const String s01_1_bienvenida = '/s01_1_bienvenida';

  static const String ajustesOneScreen = '/ajustes_one_screen';

  static const String informaciNScreen = '/informaci_n_screen';

  static const String campeonatosScreen = '/campeonatos_screen';

  static const String perfilCarrerasScreen = '/perfil_carreras_screen';

  static const String avatarScreen = '/avatar_screen';

  static const String creargrupoScreen = '/s54_pantalla_crear_grupo_widget';

  static const String editAvatarScreen = '/edit_avatar_screen';

  static const String listaJugadoresScreen = '/lista_jugadores_screen';

  static const String listaEscuderAsScreen = '/lista_escuder_as_screen';

  static const String listaPilotosScreen = '/lista_pilotos_screen';

  static const String listaCircuitosScreen = '/lista_circuitos_screen';

  static const String loginscreenScreen = '/loginscreen_screen';

  static const String cambiarcontraseA1screenScreen =
      '/cambiarcontrase_a1screen_screen';

  static const String mainscreensinligasScreen = '/mainscreensinligas_screen';

  static const String anadirGrupoScreen = '/s53_pantalla_unirse_grupo_widget';

  static const String listaGruposScreen = '/lista_grupos_screen';

  static const String grupoScreen = '/grupo_screen';

  static const String escuderiaRedBullScreen = '/escuderia_red_bull_screen';

  static const String pilotoVerstapenScreen = '/piloto_verstapen_screen';

  static const String tuspilotosScreen = '/tuspilotos_screen';

  static const String infoCircuito = '/info_circuito';

  static const String cambiarcontraseA2screenScreen =
      '/cambiarcontrase_a2screen_screen';

  static const String escuderiaAstonMartinScreen =
      '/escuderia_aston_martin_screen';

  static const String infopilotos = '/info_pilotos_screen';

  static const String mercadoScreen = '/mercado_screen';



  static const String cambiarcontraseA3screenOneScreen =
      '/cambiarcontrase_a3screen_one_screen';

  static const String cambiarcontraseA3screenScreen =
      '/cambiarcontrase_a3screen_screen';

  static const String escuderiaMercedesScreen = '/escuderia_mercedes_screen';

  static const String elNanoScreen = '/el_nano_screen';

  static const String ajustesScreen = '/ajustes_screen';


  static const String bakCityCircuitScreen = '/bak_city_circuit_screen';




  static Map<String, WidgetBuilder> routes = {
    s01_1_bienvenida: (context) => S011BienvenidaWidget(),
    ajustesOneScreen: (context) => AjustesOneScreen(),
    campeonatosScreen: (context) => CampeonatosWidget(),
    informaciNScreen: (context) => InformaciNScreen(),
    perfilCarrerasScreen: (context) => PerfilCarrerasScreen(),
    avatarScreen: (context) => AvatarScreen(),
    creargrupoScreen: (context) => S54PantallaCrearGrupoWidget(),
    editAvatarScreen: (context) => EditAvatarScreen(),
    listaJugadoresScreen: (context) => ListaJugadoresScreen(),
    listaEscuderAsScreen: (context) => ListaEscuderAsScreen(),
    listaPilotosScreen: (context) => ListaPilotosScreen(),
    listaCircuitosScreen: (context) => ListaCircuitosScreen(),
    loginscreenScreen: (context) => S21LoginRegistrarseWidget(),
    cambiarcontraseA1screenScreen: (context) => CambiarcontraseA1screenScreen(),
    mainscreensinligasScreen: (context) => MainWidget(),
    anadirGrupoScreen: (context) => const S53PantallaUnirseGrupoWidget(),
    listaGruposScreen: (context) => S51PantallaListadoGruposWidget(),
    grupoScreen: (context) => PantallaInternaGrupoWidget(),
    escuderiaRedBullScreen: (context) => EscuderiaRedBullScreen(),
    pilotoVerstapenScreen: (context) => PilotoVerstapenScreen(),
    tuspilotosScreen: (context) => TuspilotosScreen(),
    //circuitoBahrInScreen: (context) => CircuitoBahrInScreen(),
    cambiarcontraseA2screenScreen: (context) => CambiarcontraseA2screenScreen(),
    escuderiaAstonMartinScreen: (context) => EscuderiaAstonMartinScreen(),
    infopilotos: (context) => Info_Pilotos(driver: null),
    mercadoScreen: (context) => MercadoScreen(),
    cambiarcontraseA3screenOneScreen: (context) =>
        CambiarcontraseA3screenOneScreen(),
    cambiarcontraseA3screenScreen: (context) => CambiarcontraseA3screenScreen(),
    escuderiaMercedesScreen: (context) => EscuderiaMercedesScreen(),
    elNanoScreen: (context) => ElNanoScreen(),
    ajustesScreen: (context) => AjustesScreen()
  };
}
