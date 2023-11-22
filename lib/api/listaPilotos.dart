import 'dart:core';
import 'entityPiloto.dart';

class ListaPilotos {
  List<entityPiloto> pilotos = [];

  ListaPilotos();

  void addPiloto(entityPiloto piloto) {
    this.pilotos.add(piloto);
  }

  List<entityPiloto> getListaPilotos() {
    return this.pilotos;
  }

  void setListaPilotos(List<entityPiloto> lp) {
    this.pilotos = lp;
  }

  @override
  String toString() {
    return 'listaPilotos{pilotos: $pilotos}';
  }
}
