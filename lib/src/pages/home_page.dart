import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/widgets/menu_widgets.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color Secundarios'),
          Divider(),
          Text('Genero'),
          Divider(),
          Text('Nombre usuarios'),
          Divider(),
        ],
      ),
    );
  }
}
