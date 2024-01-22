import 'dart:core';

import 'package:FantasyF1/api/entityCircuitos.dart';

class ListaCircuitos {
  List<entityCircuitos> circuitos = [];

  ListaCircuitos();

  void addCircuito(entityCircuitos piloto) {
    this.circuitos.add(piloto);
  }

  List<entityCircuitos> getListaCircuitos() {
    return this.circuitos;
  }

  @override
  String toString() {
    return 'listaCircuitos{circuitos: $circuitos}';
  }
}
