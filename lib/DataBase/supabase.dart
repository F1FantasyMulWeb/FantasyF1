import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

const _kSupabaseUrl = 'https://kxtuosdudsktnozweafv.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt4dHVvc2R1ZHNrdG5vendlYWZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyODM1NTAsImV4cCI6MjAxNDg1OTU1MH0.DBdpyDx8VhRnc7x1xb1K64daQ5w7KA7HA2iAEcAIiLA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
