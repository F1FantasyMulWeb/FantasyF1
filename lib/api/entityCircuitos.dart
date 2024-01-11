class entityCircuitos {
  late final String? circuitId, url, circuitName, lat, long, locality, country;

  entityCircuitos({
    required this.circuitId,
    required this.url,
    required this.circuitName,
    required this.lat,
    required this.long,
    required this.locality,
    required this.country,
  });

  @override
  String toString() {
    return 'entityCircuitos{$circuitId, $url, $circuitName, $lat, $long, $locality, $country}';
  }
}
