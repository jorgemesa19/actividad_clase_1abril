class LoginController {
  // Lista de usuarios
  static final List<Map<String, String>> users = [
    {'email': 'jorge@hotmail.com', 'password': '12345'},
    {'email': 'mario@hotmail.com', 'password': '6789'},
  ];

  // Método para verificar las credenciales de inicio de sesión
  static bool login(String email, String password) {
    for (var user in users) {
      if (user['email'] == email && user['password'] == password) {
        return true; // Credenciales válidas
      }
    }
    return false; // Credenciales inválidas
  }
}
