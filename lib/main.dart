import 'package:flutter/material.dart';
import 'views/LoginPage.dart';
import 'views/HomePage.dart';
import 'package:actividad_clase_1abril/controllers/LoginController.dart'; // Importamos el controlador de inicio de sesión

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) {
          // Obtener el usuario que ha iniciado sesión
          Map<String, String>? currentUser = LoginController.getCurrentUser();

          return currentUser != null ? HomePage(currentUser: currentUser) : LoginPage();
        },
      },
    );
  }
}
