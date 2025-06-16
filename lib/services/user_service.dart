import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:paa_modul6/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final String baseUrl =
      'https://localhost:7141/bangunin/v1/Person'; // ganti localhost -> 10.0.2.2 untuk Android emulator

  Future<List<User>> fetchUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final response = await http.get(
      Uri.parse(baseUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Gagal mengambil data user');
    }
  }
}
