import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'core/app_export.dart';
import 'package:fantasyf1/theme/theme_helper.dart';
import 'package:fantasyf1/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Client {
  final http.Client _client = http.Client();

  Future<Response> get(String url) async {
    return await _client.get(url as Uri);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://kxtuosdudsktnozweafv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt4dHVvc2R1ZHNrdG5vendlYWZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyODM1NTAsImV4cCI6MjAxNDg1OTU1MH0.DBdpyDx8VhRnc7x1xb1K64daQ5w7KA7HA2iAEcAIiLA',
    authFlowType: AuthFlowType.pkce,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'fantasyf1',
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigatorService.navigatorKey,
      localizationsDelegates: [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(
          'es',
          '',
        ),
      ],
      initialRoute: AppRoutes.preloginscreenScreen,
      routes: AppRoutes.routes,
    );
  }
}
