import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'article_events.dart';
import 'article_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final ArticleRepository _articleRepository;

  ArticleBloc(this._articleRepository) : super(ArticleLoadingState()) {
    on<LoadArticleEvent>((event, emit) async{
      emit(ArticleLoadingState());
      try{
        final articles = await _articleRepository.getArticles();
        emit(ArticleLoadedState(articles));
      }catch (e) {
        emit(ArticleErrorState(e.toString()));
      }

    });
  }
}