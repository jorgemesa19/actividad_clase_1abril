import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Principal'),
      ),
      body: const Center(
        child: Text('Has ingresado correctamente'),
      ),
    );
  }
}
