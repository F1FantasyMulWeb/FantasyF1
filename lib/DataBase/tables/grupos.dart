import '../database.dart';

class GruposTable extends SupabaseTable<GruposRow> {
  @override
  String get tableName => 'Grupos';

  @override
  GruposRow createRow(Map<String, dynamic> data) => GruposRow(data);
}

class GruposRow extends SupabaseDataRow {
  GruposRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GruposTable();

  int get idGrupo => getField<int>('idGrupo')!;
  set idGrupo(int value) => setField<int>('idGrupo', value);

  String? get nombreGrupo => getField<String>('nombreGrupo');
  set nombreGrupo(String? value) => setField<String>('nombreGrupo', value);

  String? get contrasenaGrupo => getField<String>('contraseñaGrupo');
  set contrasenaGrupo(String? value) =>
      setField<String>('contraseñaGrupo', value);

  String? get keyGrupo => getField<String>('keyGrupo');
  set keyGrupo(String? value) => setField<String>('keyGrupo', value);

  List<String> get listaPilotosDisponible =>
      getListField<String>('listaPilotosDisponible');
  set listaPilotosDisponible(List<String>? value) =>
      setListField<String>('listaPilotosDisponible', value);
}
