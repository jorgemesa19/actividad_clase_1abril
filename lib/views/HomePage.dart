import 'package:flutter/material.dart';
import 'package:actividad_clase_1abril/controllers/LoginController.dart';

class HomePage extends StatelessWidget {
  final Map<String, String> currentUser;

  HomePage({required this.currentUser});

  @override
  Widget build(BuildContext context) {
    // Obtener todos los usuarios
    List<Map<String, String>> allUsers = LoginController.getAllUsers();

    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: ListView.builder(
        itemCount: allUsers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(16.0),
                leading: Icon(Icons.person),
                title: Text(
                  allUsers[index]['name'] ?? '',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  allUsers[index]['email'] ?? '',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
