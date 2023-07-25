import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
          centerTitle: true,
        ),
        body: Container(
            color: const Color.fromARGB(255, 201, 231, 254),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Bienvenido, ha ingresado correctamente.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )),
            )));
  }
}
