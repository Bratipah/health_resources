import 'package:flutter_bloc/flutter_bloc.dart';
import 'comments_events.dart';
import 'comments_state.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/commentRepository.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentRepository _commentRepository;

  CommentsBloc(this._commentRepository) : super(CommentsLoadingState()) {
    on<LoadCommentsEvent>((event, emit) async{
      emit(CommentsLoadingState());
      try{
        final comments = await _commentRepository.getComments();
        emit(CommentsLoadedState());
      }catch (e) {
        emit(CommentsErrorState(e.toString()));
      }

    });
  }
}