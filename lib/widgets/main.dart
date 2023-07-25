import 'package:flutter/material.dart';
import 'package:login/shared/rutas.dart';
import 'package:login/shared/constantes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      initialRoute: Rutas.login.name,
      routes: constantes,
    );
  }
}
