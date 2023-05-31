import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';

@immutable
abstract class ArticleEvent {}

class FetchArticleEvent extends ArticleEvent {
  late ArticleRepository _articleRepository;
  @override
  List<Object?> get props => [];
}
class EmptyEvent extends ArticleEvent {}


// class CommentArticleEvent extends ArticleEvent {
//
// }