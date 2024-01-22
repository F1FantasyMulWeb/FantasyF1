import '../database.dart';

class ListadoUsuariosAppTable extends SupabaseTable<ListadoUsuariosAppRow> {
  @override
  String get tableName => 'ListadoUsuariosApp';

  @override
  ListadoUsuariosAppRow createRow(Map<String, dynamic> data) =>
      ListadoUsuariosAppRow(data);
}

class ListadoUsuariosAppRow extends SupabaseDataRow {
  ListadoUsuariosAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ListadoUsuariosAppTable();

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  String get correoElectronico => getField<String>('correo_electronico')!;
  set correoElectronico(String value) =>
      setField<String>('correo_electronico', value);

  String get nombreUsuario => getField<String>('nombre_usuario')!;
  set nombreUsuario(String value) => setField<String>('nombre_usuario', value);

  DateTime get fechaCreacion => getField<DateTime>('fecha_creacion')!;
  set fechaCreacion(DateTime value) =>
      setField<DateTime>('fecha_creacion', value);
}
