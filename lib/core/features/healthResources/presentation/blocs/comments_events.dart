import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

@immutable
abstract class CommentsEvent extends Equatable {
  const CommentsEvent();

}
class LoadCommentsEvent extends CommentsEvent {
  @override
  List<Object> get props => [];
}


