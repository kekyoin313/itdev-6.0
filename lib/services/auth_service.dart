import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final String loginUrl = 'http://192.168.1.7:7109/api/Auth/login';

  Future<String?> login(
    String name,
    String password,
    BuildContext context,
  ) async {
    try {
      final response = await http.post(
        Uri.parse(loginUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'nama': name, 'password': password}),
      );

      print("Status code: ${response.statusCode}");
      print("Response body: ${response.body}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final role = data['role'];
        final token = data['token'];

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);

        if (role == 'admin') {
          Navigator.pushReplacementNamed(context, '/homeadmin');
        } else if (role == 'user') {
          Navigator.pushReplacementNamed(context, '/homeadmin');
        } else {
          return 'Role tidak ditemukan';
        }

        return null;
      } else {
        return 'Login Gagal: ${response.reasonPhrase}';
      }
    } catch (e) {
      return 'terjadi kesalahan: $e';
    }
  }
}
