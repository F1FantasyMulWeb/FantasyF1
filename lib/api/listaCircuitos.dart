import 'dart:core';
import 'package:fantasyf1/api/entityCircuitos.dart';

import 'entityPiloto.dart';

class listaCircuitos {
  List<entityCircuitos> circuitos = [];

  listaCircuitos();

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