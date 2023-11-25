class entityEscudarias {
  late final String? constructorId, url, name, nationality;

  entityEscudarias({
    required this.constructorId,
    required this.url,
    required this.name,
    required this.nationality,
  });

  @override
  String toString() {
    return 'entityEscudarias{$constructorId, $url, $name, $nationality}';
  }
}
