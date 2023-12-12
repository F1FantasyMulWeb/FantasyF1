import 'package:fantasyf1/DataBase/databasecontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/utils/image_constant.dart';

final userModelProvider = ChangeNotifierProvider<UserModel>((ref) {
  return UserModel();
});

class UserModel extends ChangeNotifier {
  DataBaseController dataBaseController = DataBaseController();
  String _userName = "?????";
  String _avatar = ImageConstant.imgDownload169x169;
  List<dynamic> _listaGrupos = [];

  String get userName => _userName;
  String get avatar => _avatar;
  List<dynamic> get listaGrupos => _listaGrupos;

  Future<void> cargarDato() async {
    _userName = await dataBaseController.selectUserName();
    _avatar = await dataBaseController.downloadAvatarInicioUser(_userName);
    _listaGrupos = await dataBaseController.selectMisGruposName();
    notifyListeners();
  }
  Future<void> cargarGrupos() async {
    _listaGrupos = await dataBaseController.selectMisGruposName();
    notifyListeners();
  }
  Future<void> cargarImagen() async {
    _avatar = await dataBaseController.downloadAvatarInicioUser(_userName);
    notifyListeners();
  }

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }
  void setAvatar(String avatar) {
    _avatar = avatar;
    notifyListeners();
  }

}