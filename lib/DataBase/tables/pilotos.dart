import '../database.dart';

class PilotosTable extends SupabaseTable<PilotosRow> {
  @override
  String get tableName => 'Pilotos';

  @override
  PilotosRow createRow(Map<String, dynamic> data) => PilotosRow(data);
}

class PilotosRow extends SupabaseDataRow {
  PilotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PilotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  int? get precio => getField<int>('Precio');
  set precio(int? value) => setField<int>('Precio', value);

  int? get puntos => getField<int>('Puntos');
  set puntos(int? value) => setField<int>('Puntos', value);

  String? get idName => getField<String>('idName');
  set idName(String? value) => setField<String>('idName', value);
}
