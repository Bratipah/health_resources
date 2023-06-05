import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';

@immutable
abstract class  ArticleState  {}
  class EmptyState extends ArticleState {}

  class LoadingState extends ArticleState {
    @override
    List<Object?> get props => [];
  }

  class LoadedState extends ArticleState {
    final List<ArticleModel> articles;

    LoadedState({required this.articles});

    @override
    List<Object?> get props => [articles];
  }

  class ErrorState extends ArticleState {
    final String errorMessage;
    // errorMessage ="Failed";

   ErrorState({required this.errorMessage});
  }


