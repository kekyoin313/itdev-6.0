import 'dart:convert';
import 'package:http/http.dart' as http;

class ProdukService {
  final baseUrl = 'http://10.0.2.2:8000/api';

  Future<List<dynamic>> getProduk() async {
    final response = await http.get(Uri.parse('$baseUrl/produk'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Gagal memuat produk');
    }
  }
}
