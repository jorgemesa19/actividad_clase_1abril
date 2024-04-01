import 'package:flutter/material.dart';
import 'LoginPage.dart';

class RegistrarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarse'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildInputField('Nombres', backgroundColor: Colors.grey.shade200),
            SizedBox(height: 10.0),
            _buildInputField('Apellidos', backgroundColor: Colors.grey.shade200),
            SizedBox(height: 10.0),
            _buildInputField('Correo', backgroundColor: Colors.grey.shade200),
            SizedBox(height: 10.0),
            _buildInputField('Contraseña', obscureText: true, backgroundColor: Colors.grey.shade200),
            SizedBox(height: 10.0),
            _buildInputField('Verificar Contraseña', obscureText: true, backgroundColor: Colors.grey.shade200),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
              ),
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String labelText, {bool obscureText = false, Color backgroundColor = Colors.lightBlue}) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          border: InputBorder.none,
          labelText: labelText,
        ),
      ),
    );
  }
}
