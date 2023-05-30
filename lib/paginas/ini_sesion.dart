import 'package:cotidianis_web/paginas/principal.dart';
import 'package:cotidianis_web/temas/buff.dart';
import 'package:cotidianis_web/temas/steel_blue.dart';
import 'package:flutter/material.dart';

class IniSessionPag extends StatefulWidget {
  const IniSessionPag({Key? key}) : super(key: key);

  @override
  State<IniSessionPag> createState() => _IniSessionPagState();
}

class _IniSessionPagState extends State<IniSessionPag> {
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
              color: Buff.buff[900]),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue,
      ),
      body: ListView(
        children: [
          Container(
            //color: SonicSilver.sonicSilver[100],
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            child: Column(
              children: [
                Icon(
                  Icons.person_rounded,
                  color: LightSteelBlue.lSteelBlue[400],
                  size: 200,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Form(
                  //key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre

                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            labelText: "Correo Electrónico"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su CORREO!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor de la contraseña
                        obscureText: true,
                        decoration:
                        const InputDecoration(labelText: "Contraseña"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡contraseña!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/PasswordRecovery');
                          },
                          child: Text(
                            "olvidé mi contraseña",
                            style: TextStyle(
                                color: Buff.buff[400]),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              LightSteelBlue.lSteelBlue),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancelar",
                            style: TextStyle(fontSize: 18.0))),
                    const SizedBox(width: 50),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              LightSteelBlue.lSteelBlue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Principal()),
                          );
                        },
                        child: const Text("Iniciar Sesion",
                            style: TextStyle(fontSize: 18.0))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
