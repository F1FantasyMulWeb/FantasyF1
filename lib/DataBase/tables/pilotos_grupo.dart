import '../database.dart';

class PilotosGrupoTable extends SupabaseTable<PilotosGrupoRow> {
  @override
  String get tableName => 'PilotosGrupo';

  @override
  PilotosGrupoRow createRow(Map<String, dynamic> data) => PilotosGrupoRow(data);
}

class PilotosGrupoRow extends SupabaseDataRow {
  PilotosGrupoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PilotosGrupoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idGrupo => getField<int>('idGrupo');
  set idGrupo(int? value) => setField<int>('idGrupo', value);

  String? get idPiloto => getField<String>('idPiloto');
  set idPiloto(String? value) => setField<String>('idPiloto', value);

  int? get idUsuario => getField<int>('idUsuario');
  set idUsuario(int? value) => setField<int>('idUsuario', value);
}
