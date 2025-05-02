import 'dart:convert';
import 'bangun_model.dart';
import 'package:http/http.dart' as http;

class ProductController {

  static Future<List<Product>> fetchAllBook() async {
    final response = await http.get(
      Uri.parse('https://stephen-king-api.onrender.com/api/books')
    );

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      final List productJson = jsonResponse['data'];

      return productJson.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
