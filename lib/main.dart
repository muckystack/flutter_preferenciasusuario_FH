import 'package:flutter/material.dart';
import 'package:flutterpreferenciasusuariofh/src/pages/home_page.dart';
import 'package:flutterpreferenciasusuariofh/src/pages/settings_page.dart';
import 'package:flutterpreferenciasusuariofh/src/preferencias_usuario.dart';
 
void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());

}
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final prefs = new PreferenciasUsuario();

    return MaterialApp(
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName : (BuildContext context) => HomePage(),
        SettingsPage.routeName : (BuildContext context) => SettingsPage(),
      },
    );
  }
}