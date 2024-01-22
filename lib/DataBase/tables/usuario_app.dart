import '../database.dart';

class UsuarioAppTable extends SupabaseTable<UsuarioAppRow> {
  @override
  String get tableName => 'UsuarioApp';

  @override
  UsuarioAppRow createRow(Map<String, dynamic> data) => UsuarioAppRow(data);
}

class UsuarioAppRow extends SupabaseDataRow {
  UsuarioAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioAppTable();

  int get idUsuario => getField<int>('idUsuario')!;
  set idUsuario(int value) => setField<int>('idUsuario', value);

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);

  List<String> get logros => getListField<String>('logros');
  set logros(List<String>? value) => setListField<String>('logros', value);

  String? get imagenPerfil => getField<String>('imagenPerfil');
  set imagenPerfil(String? value) => setField<String>('imagenPerfil', value);

  String get userName => getField<String>('userName')!;
  set userName(String value) => setField<String>('userName', value);
}
