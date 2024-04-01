import 'package:flutter/material.dart';
import 'package:actividad_clase_1abril/controllers/UserController.dart';
import 'package:actividad_clase_1abril/models/User.dart';

class HomePage extends StatelessWidget {
  final Map<String, String> currentUser;

  HomePage({required this.currentUser}); // Constructor que recibe currentUser como parámetro

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: FutureBuilder<List<User>>(
        future: UserController.fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                User user = snapshot.data![index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              },
            );
          }
        },
      ),
    );
  }
}
