import 'package:health_resources/core/features/healthResources/data/models/article_model.dart';
import 'package:health_resources/core/features/healthResources/data/models/comment_model.dart';
import 'package:health_resources/core/features/healthResources/data/models/api_error_response.dart';

abstract class ApiHttpService {
  NetworkResponse getAllArticles();
  NetworkResponse getArticle(int articleId);
  NetworkResponse createArticle(CreateArticleRequest request);
  NetworkResponse updateArticle(int articleId, CreateArticleRequest);
  NetworkResponse getAllComments(int articleId, int commentId);
  NetworkResponse addComment(int articleId);
  NetworkResponse deleteCommentLike(int articleId, int commentId);
  NetworkResponse addLikes(int articleId);
  NetworkResponse deleteLikes(int articleId);
  NetworkResponse AddCommentOnComment(int articleId, int commentId);
  NetworkResponse getAllCommentsOnComments(int articleId, int commentId);
}