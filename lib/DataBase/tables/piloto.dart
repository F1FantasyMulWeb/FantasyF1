import '../database.dart';

class PilotoTable extends SupabaseTable<PilotoRow> {
  @override
  String get tableName => 'Piloto';

  @override
  PilotoRow createRow(Map<String, dynamic> data) => PilotoRow(data);
}

class PilotoRow extends SupabaseDataRow {
  PilotoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PilotoTable();

  String get name => getField<String>('Name')!;
  set name(String value) => setField<String>('Name', value);

  int? get precio => getField<int>('Precio');
  set precio(int? value) => setField<int>('Precio', value);

  int? get puntos => getField<int>('Puntos');
  set puntos(int? value) => setField<int>('Puntos', value);

  String get idName => getField<String>('idName')!;
  set idName(String value) => setField<String>('idName', value);
}
