import 'package:flutter/material.dart';
import 'package:login/shared/rutas.dart';
import 'package:login/widgets/inputform.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final correoController = TextEditingController();
  final contrasenaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 115, 135),
        leading: const Icon(Icons.person_2_outlined, size: 30),
        title: const Text(
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          "LOGIN",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 35),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://1.bp.blogspot.com/-9EQ8GPdCjU0/XA2ZtxaVbGI/AAAAAAAAPV4/lYHRhWPRuFYZ-kAb5vANsHp-olPTRRz7ACLcBGAs/s640/LOGO%2BUNAH%2BPHOTOSHOP.png',
                  ),
                ),
              ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      InputForm(
                        label: "Correo",
                        icon: Icons.mail_outline,
                        controller: correoController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Ingrese su correo.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.5,
                      ),
                      InputForm(
                        label: "Contraseña",
                        icon: Icons.password,
                        obscureText: true,
                        mostrarBoton: true,
                        controller: contrasenaController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Ingrese su contraseña.";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.5,
                      ),
                    ],
                  ),
                ),
              ),
              FilledButton.tonal(
                onPressed: () {
                  validacion(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 237, 115, 135),
                ),
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  validacion(BuildContext context) {
    if (formKey.currentState!.validate()) {
      if (correoController.text == "nicolle.castellano@unah.hn" &&
          contrasenaController.text == "20201005907") {
        Navigator.pushNamed(context, Rutas.inicio.name);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Correo o contraseña INCORRECTOS."),
            duration: Duration(seconds: 5),
          ),
        );
      }
    }
  }
}
