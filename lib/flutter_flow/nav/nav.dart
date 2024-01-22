import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../../auth/base_auth_user_provider.dart';
import '../../presentation/screens/anadir_grupo_screen/s53_pantalla_unirse_grupo_widget.dart';
import '../../presentation/screens/creargrupo_screen/s54_pantalla_crear_grupo_widget.dart';
import '../../presentation/screens/screen_01/s_01_1_bienvenida/bienvenida_widget.dart';
import '../../presentation/screens/screen_02/s02_1_login_registrarse/login_registrarse_widget.dart';
import '../../presentation/screens/screen_02/s02_2_restablecer_contrasena/restablecer_contrasena_widget.dart';
import '../../presentation/screens/screen_03/s03_1_pantalla_carga/pantalla_carga_widget.dart';
import '../../presentation/screens/screen_04/s04_1_inicio/inicio_widget.dart';
import '../../presentation/screens/screen_05/s05_1_campeonatos/campeonatos_widget.dart';
import '../../presentation/screens/screen_06/s06_1_circuitos/circuitos_widget.dart';
import '../../presentation/screens/screen_07/s07_1_escuderias/escuderias_widget.dart';
import '../../presentation/screens/screen_08/s08_1_pilotos/pilotos_widget.dart';
import '../../presentation/screens/screen_09/s09_1_grupos/grupos_widget.dart';
import '../../presentation/screens/screen_09/s09_2_inicio_grupo/inicio_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_3_clasificacion_grupo/clasificacion_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_4_garaje_grupo/garaje_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_5_mercado_pilotos_grupo/mercado_pilotos_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_6_informacion_grupo/informacion_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_7_ajustes_grupo/ajustes_grupo_widget.dart';
import '../../presentation/screens/screen_09/s09_8_usuarios_grupo/usuarios_grupo_widget.dart';
import '../../presentation/screens/screen_10/s10_1_como_jugar/como_jugar_widget.dart';
import '../../presentation/screens/screen_11/s11_1_mi_cuenta/mi_cuenta_widget.dart';
import '../../presentation/screens/screen_12/s12_1_ajustes/ajustes_widget.dart';
import '../../presentation/screens/screen_13/s13_1_notificaciones/notificaciones_widget.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? S031PantallaCargaMvWidget()
          : S011BienvenidaWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? S031PantallaCargaMvWidget()
              : S011BienvenidaWidget(),
        ),
        FFRoute(
          name: 'S01-1_bienvenida',
          path: '/S01-1_bienvenida',
          builder: (context, params) => S011BienvenidaWidget(),
        ),
        FFRoute(
          name: 'S02-1_loginRegistrarse',
          path: '/S02-1_loginRegistrarse',
          builder: (context, params) => S021LoginRegistrarseWidget(),
        ),
        FFRoute(
          name: 'S03-1_pantallaCarga_Mv',
          path: '/S3-1_pantallaCarga_Mv',
          builder: (context, params) => S031PantallaCargaMvWidget(),
        ),
        FFRoute(
          name: 'S04-1_inicio',
          path: '/S04-1_inicio',
          builder: (context, params) => S041InicioWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-2_inicioGrupo',
          path: '/S09-2_inicioGrupo',
          builder: (context, params) => S092InicioGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-1_grupos',
          path: '/S09-1_grupos',
          builder: (context, params) => S091GruposWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S5-3_pantallaUnirseGrupo',
          path: '/S5-3_pantallaUnirseGrupo',
          builder: (context, params) => S53PantallaUnirseGrupoWidget(),
        ),
        FFRoute(
          name: 'S5-4_pantallaCrearGrupo',
          path: '/S5-4_pantallaCrearGrupo',
          builder: (context, params) => S54PantallaCrearGrupoWidget(),
        ),
        FFRoute(
          name: 'S02-2_restablecerContrasena_Mv',
          path: '/S2-2_restablecerContrasena_Mv',
          builder: (context, params) => S022RestablecerContrasenaMvWidget(),
        ),
        FFRoute(
          name: 'S05-1_campeonatos',
          path: '/S05-1_campeonatos',
          builder: (context, params) => S051CampeonatosWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S06-1_circuitos_Mv',
          path: '/S06-1_circuitos',
          builder: (context, params) => S061CircuitosMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S07-1_escuderias',
          path: '/S07-1_escuderias',
          builder: (context, params) => S071EscuderiasWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S08-1_pilotos_Mv',
          path: '/S08-1_pilotos',
          builder: (context, params) => S081PilotosMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S10-1_comoJugar_Mv',
          path: '/S10-1_comoJugar_Mv',
          builder: (context, params) => S101ComoJugarMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S11-1_miCuenta_Mv',
          path: '/S11-1_miCuenta_Mv',
          builder: (context, params) => S111MiCuentaMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S12-1_ajustes_Mv',
          path: '/S12-1_ajustes_Mv',
          builder: (context, params) => S121AjustesMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S13-1_notificaciones_Mv',
          path: '/S13-1_notificaciones_Mv',
          builder: (context, params) => S131NotificacionesMvWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-3_clasificacionGrupo',
          path: '/S09-3_clasificacionGrupo',
          builder: (context, params) => S093ClasificacionGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-4_garajeGrupo',
          path: '/S09-4_garajeGrupo',
          builder: (context, params) => S094GarajeGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-5_mercadoPilotosGrupo',
          path: '/S09-5_mercadoPilotosGrupo',
          builder: (context, params) => S095MercadoPilotosGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-6_informacionGrupo',
          path: '/S09-6_informacionGrupo',
          builder: (context, params) => S096InformacionGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-7_ajustesGrupo',
          path: '/S09-7_ajustesGrupo',
          builder: (context, params) => S097AjustesGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'S09-8_usuariosGrupo',
          path: '/S09-8_usuariosGrupo',
          builder: (context, params) => S098UsuariosGrupoWidget(
            rutaPagina: params.getParam('rutaPagina', ParamType.String),
          ),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/S01-1_bienvenida';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFFF2F2F2),
                  child: Image.asset(
                    'assets/images/logoF1F_IconoApp.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
