import 'package:supabase/supabase.dart';

void sendData(String email, String password, String nombre) async {
  final client = SupabaseClient('https://kxtuosdudsktnozweafv.supabase.co', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt4dHVvc2R1ZHNrdG5vendlYWZ2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTkyODM1NTAsImV4cCI6MjAxNDg1OTU1MH0.DBdpyDx8VhRnc7x1xb1K64daQ5w7KA7HA2iAEcAIiLA');

  final response = await client.from('Usuario').insert([
    {'idUsuario': 1, 'nombreUsuario': nombre, 'gemailUsuario': email, 'passUsuario': password}
  ]);

  if (response.error != null) {
    print('Error: ${response.error!.message}');
  } else {
    print('Success: ${response.data}');
  }
}
