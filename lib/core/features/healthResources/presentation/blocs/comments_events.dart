import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class CommentsEvent extends Equatable {
  const CommentsEvent();

}
class FetchCommentsEvent extends CommentsEvent {
  @override
  List<Object> get props => [];
}
class UpdateCommentsEvent extends CommentsEvent {
  UpdateCommentsEvent(this.commentText);
  final commentText;
  @override
  List<Object> get props => [];
}

