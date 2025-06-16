import 'package:flutter/material.dart';
import 'package:paa_modul6/services/auth_service.dart';

class LoginController {
  final AuthService _authService = AuthService();

  Future<String?> loginUser(
    String name,
    String password,
    BuildContext context,
  ) async {
    try {
      final result = await _authService.login(name, password, context);
      if (result == null) {
        return null;
      } else {
        return 'Login Gagal. Periksa kembali nama dan password anda';
      }
    } catch (e) {
      return 'Terjadi kesalahan: $e';
    }
  }
}
