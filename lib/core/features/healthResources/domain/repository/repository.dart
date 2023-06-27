import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:health_resources/utils/utils.dart';
import 'package:built_collection/built_collection.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';

class ArticleRepository {
  // String endpoint = "https://staging.afyarekod.com/resource/";

      Future<List<ArticleModel>> fetchArticles() async {
      final response = await http.get(
        Uri.parse(myrekod_posts_url),
        headers: {"Authorization": "Bearer eyJhbGciOiJIUzUxMiJ9.eyJhY2Nlc3NvciI6IjQiLCJhY2Nlc3NpbmciOiIzIiwicHJvdmlkZXIiOiIyIiwiZnVuY3Rpb24iOiJCYXNpY0F1dGhlbnRpY2F0aW9uIiwic3ViIjoiQWZ5YVJla29kIFRva2VuIiwiYXVkIjoiTm9uZSBvZiB5b3VyIGJpeiB3YXggOikiLCJpc3MiOiIkMmEkMTAkeUJaWGE1VG04U00zb1RJQnd1cXZCT2Y4UVlQNG0vek9ENFZydzlnekg4THlhaXhidDNRYlciLCJpYXQiOjE2ODc4NTAzNjQsImV4cCI6MTY4Nzg2ODM2NH0.8nSLizGpbKg4rvU79Gu64h92H06AZVDO-SevhbgYNVSI7c2j5g5K3KNJTejz6IXAu34ImTNkY58YwCr-PE8OlA"}
    );



    if (response.statusCode == 200){
      try {
        List<ArticleModel> articles = ArticleModel.listFromJson(jsonDecode(response.body)).toList();

        final List<dynamic> result = jsonDecode(response.body);
        // debugPrint("Api call made with resp ${result.map(((e) => ArticleModel?.fromJson(e))).toList()}");

        final builtList = BuiltList<ArticleModel>.from(
          result.map((e) => ArticleModel.fromJson(e)),
        );
        debugPrint("the articles are $articles");
        return articles;
      } catch (e){
        debugPrint("get response trowa ${e.toString()}");
        return [];
        }


    } else {
      debugPrint("Api call made with resp ${response.body}");
      throw Exception('Failed to fetch articles');
    }
      }
}