import 'dart:core';
import 'package:fantasyf1/api/entityEscudarias.dart';

class ListaEscuderias {
  List<entityEscudarias> escuderias = [];

  ListaEscuderias();

  void addEscuderia(entityEscudarias piloto) {
    this.escuderias.add(piloto);
  }

  List<entityEscudarias> getListaEscuderia() {
    return this.escuderias;
  }

  @override
  String toString() {
    return 'listaEscuderias{escuderias: $escuderias}';
  }
}