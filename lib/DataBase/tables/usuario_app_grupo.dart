import '../database.dart';

class UsuarioAppGrupoTable extends SupabaseTable<UsuarioAppGrupoRow> {
  @override
  String get tableName => 'UsuarioAppGrupo';

  @override
  UsuarioAppGrupoRow createRow(Map<String, dynamic> data) =>
      UsuarioAppGrupoRow(data);
}

class UsuarioAppGrupoRow extends SupabaseDataRow {
  UsuarioAppGrupoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuarioAppGrupoTable();

  int get idUsuario => getField<int>('idUsuario')!;
  set idUsuario(int value) => setField<int>('idUsuario', value);

  int get idGrupo => getField<int>('idGrupo')!;
  set idGrupo(int value) => setField<int>('idGrupo', value);

  int get dinero => getField<int>('Dinero')!;
  set dinero(int value) => setField<int>('Dinero', value);

  List<String> get pilotos => getListField<String>('Pilotos');
  set pilotos(List<String>? value) => setListField<String>('Pilotos', value);

  bool? get esAdmin => getField<bool>('esAdmin');
  set esAdmin(bool? value) => setField<bool>('esAdmin', value);

  int? get victorias => getField<int>('Victorias');
  set victorias(int? value) => setField<int>('Victorias', value);

  int? get puntos => getField<int>('Puntos');
  set puntos(int? value) => setField<int>('Puntos', value);
}
