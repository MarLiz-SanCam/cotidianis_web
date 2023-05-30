import 'package:cotidianis_web/temas/steel_blue.dart';
import 'package:flutter/material.dart';

class RegistroPag extends StatefulWidget {
  const RegistroPag({Key? key}) : super(key: key);

  @override
  State<RegistroPag> createState() => _RegistroPagState();
}

class _RegistroPagState extends State<RegistroPag> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        //Barra de la aplicación
        centerTitle: true, //Centra el título de la barra de la aplicación
        title: const Text(
          'COTIDIANIS',
          //Texto para el título de la aplicación (aparece en la barra)
          style: TextStyle(
              fontSize: 22.0, fontFamily: 'RobotoSlab', color: Colors.black),
        ),
        backgroundColor: LightSteelBlue.lSteelBlue,
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 40),
            child: Column(
              children: [
                const CircleAvatar(
                  /*TODO; allow the user to put their own profile picture*/
                  radius: 60,
                ),
                const SizedBox(
                  height: 25.0,
                ),
                const Text(
                  'Completa todos los campos para crear tu cuenta',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
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
                      TextFormField(
                        //TODO: validaddor del nombre
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(labelText: "Nombre"),
                        validator: (userName) {
                          if (userName!.isEmpty) {
                            return '¡Ingrese su nombre!';
                          }
                          return null;
                        },
                        onChanged: (name){
                        },

                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Correo Electrónico"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su nombre!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor del nombre

                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Confirmar Correo Electrónico"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su nombre!';
                          }
                          return null;
                        },
                        onChanged: (email){
                        },
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        //TODO: validaddor de la contraseña
                        autocorrect: false,
                        obscureText: true,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration:
                        const InputDecoration(labelText: "Contraseña"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su Contraseña';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        //TODO: validaddor de la confirmación de la comtraseña

                        obscureText: true,
                        autocorrect: false,
                        cursorColor: LightSteelBlue.lSteelBlue,
                        decoration: const InputDecoration(
                            labelText: "Confirmar Contraseña"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '¡Ingrese su contraseña';
                          }
                          return null;
                        },
                        onChanged: (password){
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
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
                        },
                        child: const Text("Crear Cuenta",
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
