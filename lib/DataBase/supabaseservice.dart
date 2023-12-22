import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseService _singleton = SupabaseService._internal();

  late SupabaseClient client;

  factory SupabaseService() {
    return _singleton;
  }

  SupabaseService._internal() {
    Supabase.initialize(
      url: 'https://kxtuosdudsktnozweafv.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt4dHVvc2R1ZHNrdG5vendlYWZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyODM1NTAsImV4cCI6MjAxNDg1OTU1MH0.DBdpyDx8VhRnc7x1xb1K64daQ5w7KA7HA2iAEcAIiLA',
      authFlowType: AuthFlowType.pkce,
    );
    client = Supabase.instance.client;
  }
}
