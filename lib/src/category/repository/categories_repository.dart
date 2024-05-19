import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/categories_model.dart';

class CategoriesRepository {
  final http.Client client;

  CategoriesRepository(this.client);

  Future<List<Categories>> fetchCategories() async {
    final response = await client.get(
        Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> categoriesJson = data['categories'];
      return categoriesJson.map((e) => Categories.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
