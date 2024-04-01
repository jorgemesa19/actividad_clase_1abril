import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:actividad_clase_1abril/models/User.dart';

class UserController {
  static Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      return parseUsers(response.body);
    } else {
      throw Exception('Failed to load users');
    }
  }

  static List<User> parseUsers(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<User>((json) => User.fromJson(json)).toList();
  }
}
