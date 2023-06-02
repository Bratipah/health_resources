import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';

class ArticleRepository {
  String endpoint = "https://staging.afyarekod.com/resource/";

      Future<List<ArticleModel>> fetchArticles() async {
      final response = await http.get(
        Uri.parse(endpoint),
        headers: {"Authorization": "bearer eyJhbGciOiJIUzUxMiJ9.eyJhY2Nlc3NvciI6IjQiLCJhY2Nlc3NpbmciOiIzIiwicHJvdmlkZXIiOiIyIiwiZnVuY3Rpb24iOiJCYXNpY0F1dGhlbnRpY2F0aW9uIiwic3ViIjoiQWZ5YVJla29kIFRva2VuIiwiYXVkIjoiTm9uZSBvZiB5b3VyIGJpeiB3YXggOikiLCJpc3MiOiIkMmEkMTAkUktQOEhDYldqWS92THBaV2lWdUoxdWhqai9pNWlsVHROWXd0T0pLMmtzWkU2RUhWMTdUS20iLCJpYXQiOjE2ODUwMDAzMTIsImV4cCI6MTY4NTAxODMxMn0.xDCnRGq_qJbtmTY86V7SBOKFA7kXT5l8GFSfYj8ptYhGIn4Uizb6B16yUeIy8g4Wew674Vxy2H8hSE4pBubPrQ"}
    );
    if (response.statusCode == 200){
      final List result = jsonDecode(response.body)['data'];
      return result.map(((e) => ArticleModel.fromJson(e))).toList();

    } else {
      throw Exception('Failed to fetch articles');
    }
      }
}