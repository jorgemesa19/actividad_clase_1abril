class LoginController {
  static final List<Map<String, String>> users = [
    {'name': 'Jorge', 'email': 'jorge@hotmail.com', 'password': '12345'},
    {'name': 'Mario', 'email': 'mario@hotmail.com', 'password': '6789'},
  ];

  // Método para verificar las credenciales de inicio de sesión
  static Map<String, String>? login(String email, String password) {
    for (var user in users) {
      if (user['email'] == email && user['password'] == password) {
        return user; // Credenciales válidas
      }
    }
    return null; // Credenciales inválidas
  }

  // Método para obtener el usuario actualmente autenticado
  static Map<String, String>? getCurrentUser() {
    // En una aplicación real, aquí podrías implementar lógica para obtener el usuario actual
    // Esto podría implicar acceder al estado global de la aplicación, al token de autenticación, etc.
    // En este ejemplo simple, devolvemos null ya que no estamos persistiendo el estado de la sesión
    return null;
  }

  // Método para obtener todos los usuarios
  static List<Map<String, String>> getAllUsers() {
    return users;
  }
}
