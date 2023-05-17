import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';

@immutable
abstract class ArticleState extends Equatable {
  const ArticleState();

}
// data Loading state
class ArticleLoadingState extends ArticleState {
  @override
  List<Object?> get props => [];
}

// data Loaded state
class ArticleLoadedState extends ArticleState {
  ArticleLoadedState(this.articles);
  final List<ArticleModel>articles;
  @override
  List<Object?> get props => [articles];
}


// data error Loading state
class ArticleErrorState extends ArticleState {
  ArticleErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}

//show views data
// class ShowCommentsValue extends ArticleState {
//   final
// }
//
// //show likes data
// class ShowLikesValue extends ArticleState {
//   final
// }
//
// //show comments data
// class ShowCommentsValue extends ArticleState {
//   final
// }
//
// //comments data loading state
// class CommentLoadedState extends ArticleState {
//   final
// }