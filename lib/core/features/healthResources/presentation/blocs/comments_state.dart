import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';


@immutable
abstract class CommentsState {}
  class EmptyState extends CommentsState {
  @override
  List<Object?> get props => [];
  }
// data Loading state
  class CommentsLoadingState extends CommentsState {
    @override
    List<Object?> get props => [];
  }

  // data Loaded state
  class CommentsLoadedState extends CommentsState {
    final List<CommentModel>comments;

    CommentsLoadedState(this.comments);
    @override
    List<Object?> get props => [comments];
  }


  // data error Loading state
  class CommentsErrorState extends CommentsState {
    final String commentErrorMessage;

    CommentsErrorState({required this.commentErrorMessage});
  }