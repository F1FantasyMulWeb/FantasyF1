import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../DataBase/databasecontroller.dart';

final grupoActualModelProvider =
    ChangeNotifierProvider<GrupoActualModel>((ref) {
  return GrupoActualModel();
});

class GrupoActualModel extends ChangeNotifier {
  DataBaseController dataBaseController = DataBaseController();

  String _codeGrupo = "";
  String _nombreGrupo = "";
  Map<String,int> _nombresUsuariosGrupo = {};

  String get codeGrupo => _codeGrupo;
  String get nombreGrupo => _nombreGrupo;
  Map<String,int> get nombresUsuariosGrupo => _nombresUsuariosGrupo;

  Future<void> cargarDato() async {
    _codeGrupo = await dataBaseController.selectCodeGroup(nombreGrupo);
    _nombresUsuariosGrupo =
        await dataBaseController.selectUsuariosDelGrupo(_codeGrupo);

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
