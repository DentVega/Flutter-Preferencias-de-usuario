import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsario {

  static final PreferenciasUsario _instancia = new PreferenciasUsario._internal();

  factory PreferenciasUsario() {
    return _instancia;
  }

  PreferenciasUsario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();

  }

  //Ninguna de estas propiedades se usa
//  bool _colorUsuario;
//  int _genero;
//  String _nombre;

  //GET y SET del genero

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

}