//Archivo de rutas

import 'package:cotidianis_web/main.dart';

import 'package:flutter/cupertino.dart';

import 'paginas/ini_sesion.dart';
import 'paginas/registro.dart';


Map<String, WidgetBuilder> buildAppRoutes(){
  return{
    '/FirstScreen': (BuildContext context) => const MainPagina(title: 'Cotidianis',),
    '/RegisterScrn': (BuildContext context) => const RegistroPag(),
    '/LogInScrn': (BuildContext context) => const IniSessionPag(),
    //'/HomeScrn': (BuildContext context) => const PrincipalPag(),
    //'/PasswordRecovery': (BuildContext context) => const PassRecover(),
    //'/EditProfile': (BuildContext context) => const PerfilPag(),
    //'/ShowTeam': (BuildContext context) => const EquipoPag(),
    //'/ShowNotes': (BuildContext context) => const NotasEquipo(),
    //'/ShowList': (BuildContext context) => const ListasEquipo(),

  };
}