import '../database.dart';

class DatosAplicacionTable extends SupabaseTable<DatosAplicacionRow> {
  @override
  String get tableName => 'DatosAplicacion';

  @override
  DatosAplicacionRow createRow(Map<String, dynamic> data) =>
      DatosAplicacionRow(data);
}

class DatosAplicacionRow extends SupabaseDataRow {
  DatosAplicacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DatosAplicacionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get version => getField<String>('version')!;
  set version(String value) => setField<String>('version', value);

  String get estadoVersion => getField<String>('estadoVersion')!;
  set estadoVersion(String value) => setField<String>('estadoVersion', value);

  String get tipoVersion => getField<String>('tipoVersion')!;
  set tipoVersion(String value) => setField<String>('tipoVersion', value);

  DateTime get fechaCreacion => getField<DateTime>('fechaCreacion')!;
  set fechaCreacion(DateTime value) =>
      setField<DateTime>('fechaCreacion', value);

  int get creadoPor => getField<int>('creadoPor')!;
  set creadoPor(int value) => setField<int>('creadoPor', value);
}
