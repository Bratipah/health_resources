import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
// import 'package:health_resourceses/core/features/healthResources/domain/models/comment_model.dart';


@immutable
abstract class CommentsState extends Equatable {
  const CommentsState();


}
// data Loading state
class CommentsLoadingState extends CommentsState {
  @override
  List<Object?> get props => [];
}

// data Loaded state
class CommentsLoadedState extends CommentsState {
  final List<String>comments = [];
  @override
  List<Object?> get props => [comments];
}


// data error Loading state
class CommentsErrorState extends CommentsState {
  CommentsErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}