import 'package:cotidianis_web/paginas/ini_sesion.dart';
import 'package:cotidianis_web/paginas/registro.dart';
import 'package:cotidianis_web/temas/steel_blue.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cotidianis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
        useMaterial3: true,
      ),
      home: const MainPagina(title: 'HomePage'),
    );
  }
}

class MainPagina extends StatefulWidget {
  const MainPagina({super.key, required this.title});
  final String title;
 @override
  State<MainPagina> createState() => _MainPaginaState();
}

class _MainPaginaState extends State<MainPagina> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'RobotoSlab',
              color: LightSteelBlue.lSteelBlue[50]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue[800],
      ),
      body: Center(
       child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 50.0),
                  Text(
                    '¿Qué es COTIDIANIS?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 40.0,
                      color: LightSteelBlue.lSteelBlue.shade900,
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  SizedBox(
                    width: 500,
                    child:
                    Text(
                      'Es una aplicación web que tiene como propósito poder organizar las actividades de un grupo de personas con los mismos intereses, obligaciones y actividades.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'roboto',
                        fontSize: 20.0,
                        color: LightSteelBlue.lSteelBlue.shade900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                                color: LightSteelBlue.lSteelBlue[800],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 5,
                                height: 60.0,
                                minWidth: 170.0,
                                splashColor: Colors.transparent,
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const IniSessionPag()),
                                  );
                                },
                                child: Text(
                                  'Iniciar Sesión',
                                  style: TextStyle(
                                    color: LightSteelBlue.lSteelBlue[50],
                                    fontFamily: 'PTSerif',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                            const SizedBox(
                              height: 10.0,
                            ),
                            MaterialButton(
                                color: LightSteelBlue.lSteelBlue[900],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                elevation: 5,
                                height: 60.0,
                                minWidth: 170.0,
                                splashColor: Colors.transparent,
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const RegistroPag()),
                                  );
                                },
                                child: Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    color: LightSteelBlue.lSteelBlue[50],
                                    //fontFamily: 'PTSerif',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                )),


                          ],
                        ),
                      ),
                  const SizedBox(height: 50.0),
                  SizedBox(
                    width: 500,
                    child:
                    Text(
                      '¿Aún no tienes una cuenta? Crea una y comienza a organizar tus equipos de trabajo en tiempo real',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'roboto',
                        fontSize: 17.0,
                        color: LightSteelBlue.lSteelBlue.shade900,
                      ),
                    ),
                  ),
                ],
              ),
             const SizedBox(
               width: 55,
             ),
             Container(width: 700,
               height: 500,
               decoration: BoxDecoration(
                 color: Colors.white10,
                 borderRadius: BorderRadius.circular(10),
               )
             ),
             /* Container(
                //TODO: solucionar apariencia de imagen aqui
                width: 600,
                height: 500,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("images/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              )*/
                ],
          )

      ),
    );
  }
}
