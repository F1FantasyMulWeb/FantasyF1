import 'package:get/get_utils/get_utils.dart';

import 'listaCircuitos.dart';
import 'listaEscuderias.dart';
import 'listaPilotos.dart';


class ManejoDeLaInformcion {
  ListaPilotos listaPiloto = new ListaPilotos();
  ListaEscuderias listaEscuderia = new ListaEscuderias();
  ListaCircuitos listaCircuito = new ListaCircuitos();


  ManejoDeLaInformcion();

  ListaPilotos getListaPilotos() {
    return this.listaPiloto;
  }
  ListaEscuderias getListaEscuderias() {
    return this.listaEscuderia;
  }
  ListaCircuitos getListaCircuitos() {
    return this.listaCircuito;
  }
  void setListaPilotos(ListaPilotos lp) {
    this.listaPiloto = lp;
  }
  void setListaEscuderias(ListaEscuderias le) {
    this.listaEscuderia = le;
  }
  void setListaCircuitos(ListaCircuitos lc) {
    this.listaCircuito = lc;
  }
}

