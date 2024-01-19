import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../DataBase/databasecontroller.dart';

final grupoActualModelProvider = ChangeNotifierProvider<GrupoActualModel>((ref) {
  return GrupoActualModel();
});

class GrupoActualModel extends ChangeNotifier {
  DataBaseController dataBaseController = DataBaseController();

  int _idGrupo = 0;
  String _codeGrupo = "";
  String _nombreGrupo = "";
  Map<String, Map<String, dynamic>> _nombresUsuariosGrupo = {};
  Map<String, List<Object>> _listaPilotosDelGrupo = {};


  int get idGrupoActual => _idGrupo;

  String get codeGrupo => _codeGrupo;

  String get nombreGrupo => _nombreGrupo;

  Map<String, Map<String, dynamic>> get infoJugadores => _nombresUsuariosGrupo;

  Map<String, List<Object>> get listaPilotosDelGrupo => _listaPilotosDelGrupo;




  Future<void> cargarDato() async {
    _codeGrupo = await dataBaseController.selectCodeGroup(nombreGrupo);
    _nombresUsuariosGrupo =
    await dataBaseController.seleccionarInfoJugadores(_codeGrupo);
    _listaPilotosDelGrupo =
    await dataBaseController.selectPilotosDisponiblesDelGrupo1(_codeGrupo);
    _idGrupo = await dataBaseController.selectIdGroup(nombreGrupo);

    notifyListeners();
  }

  Future<void> cargarGrupo() async {
    _listaPilotosDelGrupo =
    await dataBaseController.selectPilotosDisponiblesDelGrupo1(_codeGrupo);
    notifyListeners();
  }

  void setnombreGrupo(String nombreGrupo) {
    _nombreGrupo = nombreGrupo;
    notifyListeners();
  }

  void setcodeGrupo(String codeGrupo) {
    _codeGrupo = codeGrupo;
    notifyListeners();
  }
}
