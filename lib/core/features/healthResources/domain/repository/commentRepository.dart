import 'dart:convert';

import 'package:http/http.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';

class CommentRepository {
  // String token = "Bear eg...."

  String endpoint = "https://www.googleapis.com/books/v1/volumes?q=flowers+inauthor:keyes&key=AIzaSyAh80fc79LithOxxHQH2Gx1wOhOIzWyvYw";
  Future<List<CommentModel>> getComments() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200){
      final List result = jsonDecode(response.body)['comments'];
      return result.map(((e) => CommentModel.fromJson(e))).toList();

    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}