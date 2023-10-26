import 'package:flutter/material.dart';
import 'package:fantasyf1/presentation/preloginscreen_screen/preloginscreen_screen.dart';
import 'package:fantasyf1/presentation/ajustes_one_screen/ajustes_one_screen.dart';
import 'package:fantasyf1/presentation/informaci_n_screen/informaci_n_screen.dart';
import 'package:fantasyf1/presentation/perfil_carreras_screen/perfil_carreras_screen.dart';
import 'package:fantasyf1/presentation/avatar_screen/avatar_screen.dart';
import 'package:fantasyf1/presentation/creargrupo_screen/creargrupo_screen.dart';
import 'package:fantasyf1/presentation/avatar_one_screen/avatar_one_screen.dart';
import 'package:fantasyf1/presentation/lista_jugadores_screen/lista_jugadores_screen.dart';
import 'package:fantasyf1/presentation/lista_escuder_as_screen/lista_escuder_as_screen.dart';
import 'package:fantasyf1/presentation/lista_pilotos_screen/lista_pilotos_screen.dart';
import 'package:fantasyf1/presentation/lista_circuitos_screen/lista_circuitos_screen.dart';
import 'package:fantasyf1/presentation/loginscreen_screen/loginscreen_screen.dart';
import 'package:fantasyf1/presentation/registrarsescreen_screen/registrarsescreen_screen.dart';
import 'package:fantasyf1/presentation/cambiarcontrase_a1screen_screen/cambiarcontrase_a1screen_screen.dart';
import 'package:fantasyf1/presentation/mainscreensinligas_screen/mainscreensinligas_screen.dart';
import 'package:fantasyf1/presentation/a_adirgrupo_screen/a_adirgrupo_screen.dart';
import 'package:fantasyf1/presentation/lista_grupos_screen/lista_grupos_screen.dart';
import 'package:fantasyf1/presentation/grupo_screen/grupo_screen.dart';
import 'package:fantasyf1/presentation/escuderia_red_bull_screen/escuderia_red_bull_screen.dart';
import 'package:fantasyf1/presentation/piloto_verstapen_screen/piloto_verstapen_screen.dart';
import 'package:fantasyf1/presentation/tuspilotos_screen/tuspilotos_screen.dart';
import 'package:fantasyf1/presentation/circuito_bahr_in_screen/circuito_bahr_in_screen.dart';
import 'package:fantasyf1/presentation/cambiarcontrase_a2screen_screen/cambiarcontrase_a2screen_screen.dart';
import 'package:fantasyf1/presentation/escuderia_aston_martin_screen/escuderia_aston_martin_screen.dart';
import 'package:fantasyf1/presentation/checo_perez_screen/checo_perez_screen.dart';
import 'package:fantasyf1/presentation/mercado_screen/mercado_screen.dart';
import 'package:fantasyf1/presentation/circuito_de_la_corniche_de_yeda_screen/circuito_de_la_corniche_de_yeda_screen.dart';
import 'package:fantasyf1/presentation/cambiarcontrase_a3screen_one_screen/cambiarcontrase_a3screen_one_screen.dart';
import 'package:fantasyf1/presentation/cambiarcontrase_a3screen_screen/cambiarcontrase_a3screen_screen.dart';
import 'package:fantasyf1/presentation/escuderia_mercedes_screen/escuderia_mercedes_screen.dart';
import 'package:fantasyf1/presentation/el_nano_screen/el_nano_screen.dart';
import 'package:fantasyf1/presentation/ajustes_screen/ajustes_screen.dart';
import 'package:fantasyf1/presentation/circuito_de_albert_park_screen/circuito_de_albert_park_screen.dart';
import 'package:fantasyf1/presentation/bak_city_circuit_screen/bak_city_circuit_screen.dart';
import 'package:fantasyf1/presentation/circuito_urbano_de_miami_screen/circuito_urbano_de_miami_screen.dart';
import 'package:fantasyf1/presentation/circuito_de_m_naco_screen/circuito_de_m_naco_screen.dart';
import 'package:fantasyf1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String preloginscreenScreen = '/preloginscreen_screen';

  static const String ajustesOneScreen = '/ajustes_one_screen';

  static const String informaciNScreen = '/informaci_n_screen';

  static const String perfilCarrerasScreen = '/perfil_carreras_screen';

  static const String avatarScreen = '/avatar_screen';

  static const String creargrupoScreen = '/creargrupo_screen';

  static const String avatarOneScreen = '/avatar_one_screen';

  static const String listaJugadoresScreen = '/lista_jugadores_screen';

  static const String listaEscuderAsScreen = '/lista_escuder_as_screen';

  static const String listaPilotosScreen = '/lista_pilotos_screen';

  static const String listaCircuitosScreen = '/lista_circuitos_screen';

  static const String loginscreenScreen = '/loginscreen_screen';

  static const String registrarsescreenScreen = '/registrarsescreen_screen';

  static const String cambiarcontraseA1screenScreen =
      '/cambiarcontrase_a1screen_screen';

  static const String mainscreensinligasScreen = '/mainscreensinligas_screen';

  static const String aAdirgrupoScreen = '/a_adirgrupo_screen';

  static const String listaGruposScreen = '/lista_grupos_screen';

  static const String grupoScreen = '/grupo_screen';

  static const String escuderiaRedBullScreen = '/escuderia_red_bull_screen';

  static const String pilotoVerstapenScreen = '/piloto_verstapen_screen';

  static const String tuspilotosScreen = '/tuspilotos_screen';

  static const String circuitoBahrInScreen = '/circuito_bahr_in_screen';

  static const String cambiarcontraseA2screenScreen =
      '/cambiarcontrase_a2screen_screen';

  static const String escuderiaAstonMartinScreen =
      '/escuderia_aston_martin_screen';

  static const String checoPerezScreen = '/checo_perez_screen';

  static const String mercadoScreen = '/mercado_screen';

  static const String circuitoDeLaCornicheDeYedaScreen =
      '/circuito_de_la_corniche_de_yeda_screen';

  static const String cambiarcontraseA3screenOneScreen =
      '/cambiarcontrase_a3screen_one_screen';

  static const String cambiarcontraseA3screenScreen =
      '/cambiarcontrase_a3screen_screen';

  static const String escuderiaMercedesScreen = '/escuderia_mercedes_screen';

  static const String elNanoScreen = '/el_nano_screen';

  static const String ajustesScreen = '/ajustes_screen';

  static const String circuitoDeAlbertParkScreen =
      '/circuito_de_albert_park_screen';

  static const String bakCityCircuitScreen = '/bak_city_circuit_screen';

  static const String circuitoUrbanoDeMiamiScreen =
      '/circuito_urbano_de_miami_screen';

  static const String circuitoDeMNacoScreen = '/circuito_de_m_naco_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    preloginscreenScreen: (context) => PreloginscreenScreen(),
    ajustesOneScreen: (context) => AjustesOneScreen(),
    informaciNScreen: (context) => InformaciNScreen(),
    perfilCarrerasScreen: (context) => PerfilCarrerasScreen(),
    avatarScreen: (context) => AvatarScreen(),
    creargrupoScreen: (context) => CreargrupoScreen(),
    avatarOneScreen: (context) => AvatarOneScreen(),
    listaJugadoresScreen: (context) => ListaJugadoresScreen(),
    listaEscuderAsScreen: (context) => ListaEscuderAsScreen(),
    listaPilotosScreen: (context) => ListaPilotosScreen(),
    listaCircuitosScreen: (context) => ListaCircuitosScreen(),
    loginscreenScreen: (context) => LoginscreenScreen(),
    registrarsescreenScreen: (context) => RegistrarsescreenScreen(),
    cambiarcontraseA1screenScreen: (context) => CambiarcontraseA1screenScreen(),
    mainscreensinligasScreen: (context) => MainscreensinligasScreen(),
    aAdirgrupoScreen: (context) => AAdirgrupoScreen(),
    listaGruposScreen: (context) => ListaGruposScreen(),
    grupoScreen: (context) => GrupoScreen(),
    escuderiaRedBullScreen: (context) => EscuderiaRedBullScreen(),
    pilotoVerstapenScreen: (context) => PilotoVerstapenScreen(),
    tuspilotosScreen: (context) => TuspilotosScreen(),
    circuitoBahrInScreen: (context) => CircuitoBahrInScreen(),
    cambiarcontraseA2screenScreen: (context) => CambiarcontraseA2screenScreen(),
    escuderiaAstonMartinScreen: (context) => EscuderiaAstonMartinScreen(),
    checoPerezScreen: (context) => ChecoPerezScreen(),
    mercadoScreen: (context) => MercadoScreen(),
    circuitoDeLaCornicheDeYedaScreen: (context) =>
        CircuitoDeLaCornicheDeYedaScreen(),
    cambiarcontraseA3screenOneScreen: (context) =>
        CambiarcontraseA3screenOneScreen(),
    cambiarcontraseA3screenScreen: (context) => CambiarcontraseA3screenScreen(),
    escuderiaMercedesScreen: (context) => EscuderiaMercedesScreen(),
    elNanoScreen: (context) => ElNanoScreen(),
    ajustesScreen: (context) => AjustesScreen(),
    circuitoDeAlbertParkScreen: (context) => CircuitoDeAlbertParkScreen(),
    bakCityCircuitScreen: (context) => BakCityCircuitScreen(),
    circuitoUrbanoDeMiamiScreen: (context) => CircuitoUrbanoDeMiamiScreen(),
    circuitoDeMNacoScreen: (context) => CircuitoDeMNacoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
