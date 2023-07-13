import 'package:flutter_bloc/flutter_bloc.dart';
import 'comments_events.dart';
import 'comments_state.dart';
import 'package:health_resources/core/features/healthResources/domain/models/comment_model.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/commentRepository.dart';


class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository _commentRepository;

  CommentsBloc(this._commentRepository) : super(EmptyState()) {
    on<FetchCommentsEvent>((event, emit) async{
      emit(CommentsLoadingState());
      try{
        var comments = await _commentRepository.fetchComments();
        emit(CommentsLoadedState(comments));
      }catch (e) {
        emit(CommentsErrorState(commentErrorMessage: e.toString()));
      }

    }
    );
    on<UpdateCommentsEvent>((event, emit) async {
      emit(CommentsLoadingState());
      await Future.delayed(const Duration(seconds: 1));
      try {
        List<CommentModel>? _comments = await _commentRepository.create(commentText: event.commentText );
        emit(CommentsLoadedState(_comments));
      } catch (e) {
        emit(CommentsErrorState(commentErrorMessage: e.toString()));
      }
    });
  }
}