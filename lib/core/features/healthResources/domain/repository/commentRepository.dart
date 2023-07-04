import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:health_resources/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';

class CommentRepository {
  Future<List<CommentModel>> fetchComments() async {
      final response = await http.get(
        Uri.parse(myrekod_comments_url),
        headers: {"Authorization": "Bearer eyJhbGciOiJIUzUxMiJ9.eyJhY2Nlc3NvciI6IjQiLCJhY2Nlc3NpbmciOiIzIiwicHJvdmlkZXIiOiIyIiwiZnVuY3Rpb24iOiJCYXNpY0F1dGhlbnRpY2F0aW9uIiwic3ViIjoiQWZ5YVJla29kIFRva2VuIiwiYXVkIjoiTm9uZSBvZiB5b3VyIGJpeiB3YXggOikiLCJpc3MiOiIkMmEkMTAkSTRVaEE4UW1JakxLZ3BRZk5MOFpZLlZpeU8xbDlOYnpFNzRiOFJsbnJjLmJhUERmanMvSE8iLCJpYXQiOjE2ODgzNzA2NTQsImV4cCI6MTY4ODM4ODY1NH0.rEyKEBhy5c4nkQ-iESMJIVTcNtEz-QG5NfcRJ-Z-SG9aFji7Gf57xwYO-ELGkplz-4tgrD1bYnWnICl5IyGWGQ"}
    );
    if (response.statusCode == 200){
      try {
        List<CommentModel> comments = CommentModel.listFromJson(jsonDecode(response.body)).toList();
        debugPrint("Response for comments title${response.body}");
        final List<dynamic> result = jsonDecode(response.body);
        // debugPrint("Api call made with resp ${result.map(((e) => ArticleModel?.fromJson(e))).toList()}");

        final builtList = BuiltList<CommentModel>.from(
          result.map((e) => CommentModel.fromJson(e)),
        );
        // debugPrint("the articles are $articles");
        return comments;
      } catch (e){
        debugPrint("get comments response trowa ${e.toString()}");
        return [];
      }


    } else {
      debugPrint("Api comment call made with resp ${response.body}");
      throw Exception('Failed to fetch comments');
    }
}}