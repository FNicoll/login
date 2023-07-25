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
            color: const Color.fromARGB(255, 169, 213, 249),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'WELCOME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )),
            )));
  }
}
