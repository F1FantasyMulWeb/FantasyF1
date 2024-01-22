import '../database.dart';

class PuntosUsuarioCarreraTable extends SupabaseTable<PuntosUsuarioCarreraRow> {
  @override
  String get tableName => 'PuntosUsuarioCarrera';

  @override
  PuntosUsuarioCarreraRow createRow(Map<String, dynamic> data) =>
      PuntosUsuarioCarreraRow(data);
}

class PuntosUsuarioCarreraRow extends SupabaseDataRow {
  PuntosUsuarioCarreraRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PuntosUsuarioCarreraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nombreCircuito => getField<String>('NombreCircuito');
  set nombreCircuito(String? value) =>
      setField<String>('NombreCircuito', value);

  int? get idJugador => getField<int>('idJugador');
  set idJugador(int? value) => setField<int>('idJugador', value);

  int? get idGrupo => getField<int>('idGrupo');
  set idGrupo(int? value) => setField<int>('idGrupo', value);

  List<String> get pilotos => getListField<String>('Pilotos');
  set pilotos(List<String>? value) => setListField<String>('Pilotos', value);
}
